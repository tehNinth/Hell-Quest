object SentryForm: TSentryForm
  Left = 252
  Top = 193
  Caption = 'Customizable Sentry Autoer'
  ClientHeight = 180
  ClientWidth = 634
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 8
    Top = 8
    Width = 142
    Height = 13
    Caption = 'I want to attack the first sentry'
    ParentFont = False
    Layout = tlCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel2: TsLabel
    Left = 200
    Top = 8
    Width = 33
    Height = 13
    Caption = 'time(s).'
    ParentFont = False
    Layout = tlCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel3: TsLabel
    Left = 8
    Top = 48
    Width = 265
    Height = 13
    Caption = 'After killing the first sentry I want to send rest packets for'
    ParentFont = False
    Layout = tlCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel4: TsLabel
    Left = 320
    Top = 48
    Width = 267
    Height = 13
    Caption = 'time(s). (Only set this higher than 0 if your level is too low)'
    ParentFont = False
    Layout = tlCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel5: TsLabel
    Left = 8
    Top = 88
    Width = 161
    Height = 13
    Caption = 'I want to attack the second sentry'
    ParentFont = False
    Layout = tlCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel6: TsLabel
    Left = 216
    Top = 88
    Width = 33
    Height = 13
    Caption = 'time(s).'
    ParentFont = False
    Layout = tlCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object ComboFirst: TsComboBox
    Left = 160
    Top = 8
    Width = 33
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = -1
    ParentFont = False
    TabOrder = 0
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object ComboRest: TsComboBox
    Left = 280
    Top = 48
    Width = 33
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = -1
    ParentFont = False
    TabOrder = 1
    Text = '0'
    Items.Strings = (
      '0'
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object ComboSecond: TsComboBox
    Left = 176
    Top = 88
    Width = 33
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = -1
    ParentFont = False
    TabOrder = 2
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9')
  end
  object ButtonStart: TsBitBtn
    Left = 8
    Top = 136
    Width = 609
    Height = 25
    Caption = 'Start!'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 3
    OnClick = ButtonStartClick
    SkinData.SkinSection = 'BUTTON'
  end
end
