object AdvancedPacketEditor: TAdvancedPacketEditor
  Left = 46
  Top = 52
  Caption = 'Hell Script IDE'
  ClientHeight = 433
  ClientWidth = 923
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object sLabelFX1: TsLabelFX
    Left = 8
    Top = 30
    Width = 47
    Height = 21
    Caption = 'Objects:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object sLabelFX2: TsLabelFX
    Left = 8
    Top = 8
    Width = 75
    Height = 21
    Caption = 'Project Name:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object sLabelFX3: TsLabelFX
    Left = 8
    Top = 120
    Width = 57
    Height = 21
    Caption = 'Functions:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object sLabelFX4: TsLabelFX
    Left = 8
    Top = 295
    Width = 87
    Height = 21
    Caption = 'Global Variables:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
  end
  object CodeMemo: TMemo
    Left = 224
    Top = 8
    Width = 689
    Height = 411
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
  end
  object TextProjectName: TsEdit
    Left = 89
    Top = 8
    Width = 121
    Height = 21
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'Tahoma'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object sListBox1: TsListBox
    Left = 8
    Top = 54
    Width = 203
    Height = 60
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      '[Timer](name, enabled, milliseconds)'
      '[Main]')
    ParentFont = False
    TabOrder = 2
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
  object sListBox2: TsListBox
    Left = 8
    Top = 144
    Width = 202
    Height = 145
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'send(data);'
      'say(line);'
      'emote(line);'
      'whisper(player, line);'
      'goToMap(map, number);'
      'goToPlayer(player);'
      'summon(player);')
    ParentFont = False
    TabOrder = 3
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
  object sListBox3: TsListBox
    Left = 8
    Top = 322
    Width = 210
    Height = 97
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      '<zone>'
      '<random>'
      '<id>'
      '<name>'
      '<password>')
    ParentFont = False
    TabOrder = 4
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
  object MainMenu1: TMainMenu
    Left = 160
    Top = 64
    object Prject1: TMenuItem
      Caption = 'Project'
      object New1: TMenuItem
        Caption = 'New'
        OnClick = New1Click
      end
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object Save1: TMenuItem
        Caption = 'Save'
        OnClick = Save1Click
      end
      object SaveAs1: TMenuItem
        Caption = 'Save As'
        OnClick = SaveAs1Click
      end
    end
    object Compile1: TMenuItem
      Caption = 'Compile'
      object HELLBinary1: TMenuItem
        Caption = 'Compile'
        OnClick = HELLBinary1Click
      end
      object RegularHELL1: TMenuItem
        Caption = 'Compile And Load'
        OnClick = RegularHELL1Click
      end
    end
  end
  object OpenHProject: TOpenDialog
    DefaultExt = 'hproject'
    Filter = 'Hell Project (*.hproject)|*.hproject'
    Left = 192
    Top = 64
  end
  object SaveHProject: TSaveDialog
    DefaultExt = 'hproject'
    Filter = 'Hell Project (*.hproject)|*.hproject'
    Left = 192
    Top = 96
  end
  object SaveHScript: TSaveDialog
    DefaultExt = 'hscript'
    Filter = 'Hell Script (*.hscript)|*.hscript'
    Left = 160
    Top = 96
  end
end
