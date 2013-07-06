object AutoerForm: TAutoerForm
  Left = 346
  Top = 119
  AlphaBlend = True
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Autoer Database'
  ClientHeight = 409
  ClientWidth = 394
  Color = clBlack
  Font.Charset = ANSI_CHARSET
  Font.Color = clMaroon
  Font.Height = -11
  Font.Name = 'Trebuchet MS'
  Font.Style = [fsBold]
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 16
  object sLabel1: TsLabel
    Left = 16
    Top = 10
    Width = 81
    Height = 16
    Caption = 'Quest Autoers:'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
  end
  object sLabel2: TsLabel
    Left = 192
    Top = 10
    Width = 93
    Height = 16
    Caption = 'Monster Autoers:'
    ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
  end
  object ButtonLoad: TsButton
    Left = 16
    Top = 368
    Width = 361
    Height = 25
    Caption = 'Load Selected Autoer'
    TabOrder = 0
    OnClick = LoadAutoerClick
    SkinData.SkinSection = 'BUTTON'
  end
  object sPanel1: TsPanel
    Left = 16
    Top = 32
    Width = 170
    Height = 321
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object GoldList: TsListBox
      Left = 8
      Top = 8
      Width = 153
      Height = 305
      Color = 16380653
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        'Rats In The Cradle')
      ParentFont = False
      TabOrder = 0
      OnClick = GoldListClick
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
  end
  object sPanel2: TsPanel
    Left = 192
    Top = 32
    Width = 185
    Height = 321
    TabOrder = 2
    SkinData.SkinSection = 'PANEL'
    object MonsterList: TsListBox
      Left = 8
      Top = 8
      Width = 169
      Height = 305
      Color = 16380653
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ItemHeight = 16
      Items.Strings = (
        'Bronze Draconian'
        'Sentry - Only Normal Attack'
        'Sentry - Custom'
        'Sentry - For Dragon Slayers')
      ParentFont = False
      TabOrder = 0
      OnClick = MonsterListClick
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'Tahoma'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
      SkinData.SkinSection = 'EDIT'
    end
  end
  object Open: TTimer
    Enabled = False
    Interval = 5
    OnTimer = OpenTimer
    Left = 144
    Top = 8
  end
end
