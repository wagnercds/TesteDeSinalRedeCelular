unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Gauges, ExtCtrls, UDisp, LibString, Spin, Buttons,
  ComCtrls, IniFiles;

type
  TFMain = class(TForm)
    gr1: TShape;
    gr2: TShape;
    gr3: TShape;
    gr4: TShape;
    gr5: TShape;
    ptSinal: TGauge;
    stSinal: TStaticText;
    ptForca: TGauge;
    Label4: TLabel;
    stForca: TStaticText;
    Timer: TTimer;
    GroupBox3: TGroupBox;
    edPort: TSpinEdit;
    cbVel: TComboBox;
    mens: TStatusBar;
    BitBtn2: TBitBtn;
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    stCid: TStaticText;
    stStatus: TStaticText;
    Label2: TLabel;
    Label3: TLabel;
    stRede: TStaticText;
    rgModem: TRadioGroup;
    lbMin: TLabel;
    lbMax: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    Porta : TPort;
    Operando, Fechar : boolean;
    procedure AbrPorta;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMain: TFMain;

implementation

{$R *.dfm}

procedure TFMain.AbrPorta;
var
 Vel : cardinal;
begin
   case cbVel.ItemIndex of
      0 : Vel := CBR_110;
      1 : Vel := CBR_300;
      2 : Vel := CBR_1200;
      3 : Vel := CBR_2400;
      4 : Vel := CBR_4800;
      5 : Vel := CBR_9600;
      6 : Vel := CBR_19200;
      7 : Vel := CBR_38400;
      8 : Vel := CBR_57600;
      9 : Vel := CBR_128000;
      10 : Vel := CBR_256000;
   end;
   if Porta.AbrPort(edPort.Value,8,NOPARITY,ONESTOPBIT,Vel) = 0 then
   begin
      mens.Panels[0].Text := 'COM' + IntToStr(edPort.Value);
      mens.Panels[1].Text := IntToStr(Vel);
      mens.Panels[2].Text := 'Porta aberta';
      Timer.Enabled := true;
   end
   else
   begin
      mens.Panels[0].Text := '';
      mens.Panels[1].Text := '';
      mens.Panels[2].Text := 'Não foi possivel abrir a porta';
      Timer.Enabled := false;
   end;
   Porta.LigDTR;
   Porta.LigRTS;
end;

procedure TFMain.FormCreate(Sender: TObject);
var
 WinIni : TIniFile;
begin
   Operando := false;
   Fechar := false;
   Porta := TPort.Create;
   WinIni := TIniFile.Create('TesteSin.ini');
   edPort.Value := WinIni.ReadInteger('Conf','Porta',1);
   cbVel.ItemIndex := WinIni.ReadInteger('Conf','Vel',6);
   WinIni.Free;
   AbrPorta;
end;

procedure TFMain.BitBtn2Click(Sender: TObject);
begin
   if Porta.PortAbr then
      Porta.FecPort;
   AbrPorta;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Timer.Enabled := false;
   Porta.FecPort;
   Porta.Free;
end;

procedure TFMain.SpeedButton1Click(Sender: TObject);
begin
   Timer.Enabled := not Timer.Enabled;
   mens.Panels[2].Text := 'Pausado';
end;

procedure TFMain.TimerTimer(Sender: TObject);
var
 Aux : string;
 iVal, iVal2, iLoop : integer;
begin
   Operando := true;
   Timer.Enabled := false;
   // Seta para o modo 0
   Porta.EnvMens('AT+MODE=0' + #13 + #10);
   if Porta.EnvMensEspResp(10000,'OK') then
   begin
      Porta.EnvMens('ATE0' + #13 + #10);
      if Porta.EnvMensEspResp(10000,'OK') then
      begin
         if rgModem.ItemIndex = 0 then
            Porta.EnvMens('AT+MCSQ?' + #13 + #10)
         else
            Porta.EnvMens('AT+CSQ' + #13 + #10);
         Sleep(100);
         Aux := Porta.LerPort;
         if Aux <> '' then
         begin
            mens.Panels[2].Text := '';
            Aux := Pal(Aux,#13,2);
            Aux := Pal(Aux,':',2);
            { Calcula o sinal }
            // Barra de percentual
            iVal := StrToIntDef(Pal(Aux,',',1),0);
            ptSinal.Progress := iVal;
            stSinal.Caption := IntToStr(iVal);
            // Barra de sinal
            iVal2 := Round((iVal * 5) / 31);
            for iLoop := 1 to 5 do
                (FindComponent('gr' + IntToStr(iLoop)) as TShape).Brush.Color := clBlack;
            for iLoop := 1 to iVal2 do
                (FindComponent('gr' + IntToStr(iLoop)) as TShape).Brush.Color := clLime;
            { Calcula Força }
            if rgModem.ItemIndex = 0 then
            begin
               ptForca.MaxValue := -21;
               ptForca.MinValue := -120;
               iVal := StrToIntDef(Pal(Aux,',',3),0);
            end
            else
            begin
               ptForca.MaxValue := -51;
               ptForca.MinValue := -113;
               iVal := ptForca.MinValue + (2 * iVal2);
            end;
            lbMin.Caption := 'Menor valor é ' + IntToStr(ptForca.MinValue);
            lbMax.Caption := 'Maior valor é ' + IntToStr(ptForca.MaxValue)
            ptForca.Progress := iVal;
            stForca.Caption := IntToStr(iVal);
            { Verifica se está em roaming e a cidade onde está}
            Porta.EnvMens('AT+CREG?' + #13 + #10);
            Sleep(100);
            Aux := Porta.LerPort;
            if Aux <> '' then
            begin
               mens.Panels[2].Text := '';
               Aux := Pal(Aux,#13,2);
               Aux := Pal(Aux,':',2);
               // Pega o SID
               stCid.Caption := Pal(Aux,',',1);
               Aux := Trim(Pal(Aux,',',3));
               if Aux = '0' then
                  stStatus.Caption := 'Não registrado'
               else
               if Aux = '1' then
                  stStatus.Caption := 'Registrado'
               else
                  stStatus.Caption := 'Roaming';
            end
            else
               mens.Panels[2].Text := 'O modem não responde localização';
            if rgModem.ItemIndex = 0 then
            begin
               Porta.EnvMens('AT+CAD?' + #13 + #10);
               Sleep(100);
               Aux := Porta.LerPort;
               if Aux <> '' then
               begin
                  mens.Panels[2].Text := '';
                  Aux := Pal(Aux,#13,2);
                  Aux := Trim(Pal(Aux,':',2));
                  if Aux = '0' then
                     stRede.Caption := 'Sem serviço'
                  else
                  if Aux = '1' then
                     stRede.Caption := 'CDMA'
                  else
                  if Aux = '2' then
                     stRede.Caption := 'TDMA'
                  else
                     stRede.Caption := 'AMPS';
               end
               else
                  mens.Panels[2].Text := 'O modem não responde o tipo de sinal';
            end
            else
            begin
               stCid.Caption := '';
               mens.Panels[2].Text := '';
               stStatus.Caption := '';
               stRede.Caption := 'GSM';
            end
         end
         else
            mens.Panels[2].Text := 'O modem não responde sinais';
      end
      else
         mens.Panels[2].Text := 'Não foi possível desligar o ECO';
   end
   else
      mens.Panels[2].Text := 'Não foi possível mudar o modo para 0';
   if Fechar = true then
      Close
   else
   begin
      Timer.Enabled := true;
      Operando := false;
   end;
end;

procedure TFMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
   if Operando = true then
   begin
      CanClose := true;
      Fechar := true
   end;
end;

end.
