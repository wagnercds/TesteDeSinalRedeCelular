program TesteSin;

uses
  Forms,
  Main in 'Main.pas' {FMain};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Analizador de Sinais';
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
