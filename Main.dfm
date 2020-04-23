object FMain: TFMain
  Left = 298
  Top = 167
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Analizador de Sinais Motorola C18'
  ClientHeight = 354
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object TGroupBox
    Left = 0
    Top = 45
    Width = 535
    Height = 145
    Align = alTop
    Caption = 'Qualidade do Sinal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object gr1: TShape
      Left = 6
      Top = 120
      Width = 25
      Height = 17
      Brush.Color = clBlack
    end
    object gr2: TShape
      Left = 38
      Top = 96
      Width = 25
      Height = 41
      Brush.Color = clBlack
    end
    object gr3: TShape
      Left = 71
      Top = 72
      Width = 25
      Height = 65
      Brush.Color = clBlack
    end
    object gr4: TShape
      Left = 103
      Top = 41
      Width = 25
      Height = 96
      Brush.Color = clBlack
    end
    object gr5: TShape
      Left = 136
      Top = 16
      Width = 25
      Height = 121
      Brush.Color = clBlack
    end
    object ptSinal: TGauge
      Left = 165
      Top = 28
      Width = 365
      Height = 25
      BackColor = clBlack
      ForeColor = clLime
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MaxValue = 31
      ParentFont = False
      Progress = 0
    end
    object TLabel
      Left = 165
      Top = 15
      Width = 150
      Height = 13
      Caption = 'Percentual de uso do sinal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 167
      Top = 59
      Width = 78
      Height = 13
      Caption = 'N'#237'vel de Sinal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 258
      Top = 72
      Width = 102
      Height = 13
      Caption = 'Menor valor '#233' 0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object TLabel
      Left = 258
      Top = 88
      Width = 106
      Height = 13
      Caption = 'Maior valor '#233' 31'
      Color = clBlack
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label1: TLabel
      Left = 393
      Top = 64
      Width = 22
      Height = 13
      Caption = 'SID'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 379
      Top = 85
      Width = 36
      Height = 13
      Caption = 'Status'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 372
      Top = 105
      Width = 43
      Height = 13
      Caption = 'Servi'#231'o'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object stSinal: TStaticText
      Left = 167
      Top = 72
      Width = 89
      Height = 65
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '00'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object stCid: TStaticText
      Left = 418
      Top = 63
      Width = 32
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 1
    end
    object stStatus: TStaticText
      Left = 418
      Top = 84
      Width = 114
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 2
    end
    object stRede: TStaticText
      Left = 418
      Top = 104
      Width = 114
      Height = 17
      AutoSize = False
      BorderStyle = sbsSunken
      TabOrder = 3
    end
  end
  object TGroupBox
    Left = 0
    Top = 190
    Width = 535
    Height = 145
    Align = alTop
    Caption = 'For'#231'a do Sinal'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object TLabel
      Left = 6
      Top = 14
      Width = 111
      Height = 13
      Caption = 'Percentual de for'#231'a'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object ptForca: TGauge
      Left = 6
      Top = 28
      Width = 524
      Height = 25
      BackColor = clBlack
      ForeColor = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      MinValue = -120
      MaxValue = -21
      ParentFont = False
      Progress = -120
    end
    object Label4: TLabel
      Left = 7
      Top = 59
      Width = 57
      Height = 13
      Caption = 'RSSI (db)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object lbMin: TLabel
      Left = 205
      Top = 72
      Width = 124
      Height = 13
      Caption = 'Menor valor '#233' -120'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbMax: TLabel
      Left = 205
      Top = 88
      Width = 112
      Height = 13
      Caption = 'Maior valor '#233' -21'
      Color = clWhite
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object stForca: TStaticText
      Left = 7
      Top = 72
      Width = 194
      Height = 65
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '- 000'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 535
    Height = 45
    Align = alTop
    Caption = 'Configura'#231#227'o'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TLabel
      Left = 7
      Top = 19
      Width = 30
      Height = 13
      Caption = 'Porta'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 82
      Top = 19
      Width = 62
      Height = 13
      Caption = 'Velocidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 435
      Top = 14
      Width = 97
      Height = 25
      AllowAllUp = True
      GroupIndex = -1
      Caption = 'Pausa'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000080000080000080000080FF
        FFFFFFFFFFFFFFFF000080000080000080000080FFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF000080FFFFFFFFFFFF0000FF0000FF0000FF0000
        FF000080FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF000080FF
        FFFFFFFFFF0000FF0000FF0000FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF000080FFFFFFFFFFFF0000FF0000FF0000FF0000
        FF000080FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF000080FF
        FFFFFFFFFF0000FF0000FF0000FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF000080FFFFFFFFFFFF0000FF0000FF0000FF0000
        FF000080FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF000080FF
        FFFFFFFFFF0000FF0000FF0000FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF000080FFFFFFFFFFFF0000FF0000FF0000FF0000
        FF000080FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF000080FF
        FFFFFFFFFF0000FF0000FF0000FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF000080FFFFFFFFFFFF0000FF0000FF0000FF0000
        FF000080FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FF000080FF
        FFFFFFFFFF0000FF0000FF0000FF0000FF000080FFFFFFFFFFFFFFFFFFFFFFFF
        0000FF0000FF0000FF0000FF000080FFFFFFFFFFFF0000FF0000FF0000FF0000
        FF000080FFFFFFFFFFFFFFFFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFF
        FFFFFFFFFF0000FF0000FF0000FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = SpeedButton1Click
    end
    object edPort: TSpinEdit
      Left = 39
      Top = 16
      Width = 41
      Height = 22
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      MaxValue = 4
      MinValue = 1
      ParentFont = False
      TabOrder = 0
      Value = 1
    end
    object cbVel: TComboBox
      Left = 148
      Top = 16
      Width = 75
      Height = 21
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 13
      ItemIndex = 6
      ParentFont = False
      TabOrder = 1
      Text = '19200'
      Items.Strings = (
        '110'
        '300'
        '1200'
        '2400'
        '4800'
        '9600'
        '19200'
        '38400'
        '57600'
        '115200'
        '128000'
        '256000')
    end
    object BitBtn2: TBitBtn
      Left = 335
      Top = 14
      Width = 97
      Height = 25
      Caption = '&Configurar'
      TabOrder = 2
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555550FF0559
        1950555FF75F7557F7F757000FF055591903557775F75557F77570FFFF055559
        1933575FF57F5557F7FF0F00FF05555919337F775F7F5557F7F700550F055559
        193577557F7F55F7577F07550F0555999995755575755F7FFF7F5570F0755011
        11155557F755F777777555000755033305555577755F75F77F55555555503335
        0555555FF5F75F757F5555005503335505555577FF75F7557F55505050333555
        05555757F75F75557F5505000333555505557F777FF755557F55000000355557
        07557777777F55557F5555000005555707555577777FF5557F55553000075557
        0755557F7777FFF5755555335000005555555577577777555555}
      NumGlyphs = 2
    end
    object rgModem: TRadioGroup
      Left = 232
      Top = 8
      Width = 97
      Height = 34
      Caption = 'MODEM'
      Columns = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'c18'
        'g24')
      ParentFont = False
      TabOrder = 3
    end
  end
  object mens: TStatusBar
    Left = 0
    Top = 335
    Width = 535
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 70
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object Timer: TTimer
    Interval = 250
    OnTimer = TimerTimer
    Left = 312
    Top = 88
  end
end
