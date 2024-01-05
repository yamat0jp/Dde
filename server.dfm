object Form2: TForm2
  Left = 735
  Top = 21
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsStayOnTop
  Position = poDesigned
  TextHeight = 15
  object Edit1: TEdit
    Left = 256
    Top = 104
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 280
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object ListBox1: TListBox
    Left = 264
    Top = 192
    Width = 193
    Height = 97
    ItemHeight = 15
    TabOrder = 2
  end
  object DdeServerItem1: TDdeServerItem
    Lines.Strings = (
      '')
    OnPokeData = DdeServerItem1PokeData
    Left = 144
    Top = 192
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 144
    Top = 248
  end
end
