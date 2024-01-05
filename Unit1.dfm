object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object SpeedButton1: TSpeedButton
    Left = 448
    Top = 256
    Width = 23
    Height = 22
    AllowAllUp = True
    GroupIndex = 1
    OnClick = SpeedButton1Click
  end
  object Button1: TButton
    Left = 80
    Top = 280
    Width = 75
    Height = 25
    Caption = 'request'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ListBox1: TListBox
    Left = 216
    Top = 152
    Width = 161
    Height = 97
    ItemHeight = 15
    TabOrder = 1
  end
  object Button2: TButton
    Left = 80
    Top = 336
    Width = 75
    Height = 25
    Caption = 'poke'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DdeClientConv1: TDdeClientConv
    ServiceApplication = 'Project2'
    DdeService = 'Project2'
    DdeTopic = 'Form2'
    ConnectMode = ddeManual
    Left = 136
    Top = 144
    LinkInfo = (
      'Service Project2'
      'Topic Form2')
  end
  object DdeClientItem1: TDdeClientItem
    DdeConv = DdeClientConv1
    DdeItem = 'DdeServerItem1'
    OnChange = DdeClientItem1Change
    Left = 136
    Top = 216
  end
end
