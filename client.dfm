object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 288
    Top = 280
    Width = 34
    Height = 15
    Caption = 'Label1'
  end
  object Edit1: TEdit
    Left = 280
    Top = 208
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 288
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DdeClientConv1: TDdeClientConv
    ServiceApplication = 'Project2'
    DdeService = 'Project2'
    DdeTopic = 'Form2'
    Left = 136
    Top = 120
    LinkInfo = (
      'Service Project2'
      'Topic Form2')
  end
  object DdeClientItem1: TDdeClientItem
    DdeConv = DdeClientConv1
    OnChange = DdeClientItem1Change
    Left = 136
    Top = 264
  end
end
