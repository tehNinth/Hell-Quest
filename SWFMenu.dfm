object SWFMenuForm: TSWFMenuForm
  Left = 265
  Top = 149
  Caption = 'SWF Menu'
  ClientHeight = 447
  ClientWidth = 396
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object sLabelFX1: TsLabelFX
    Left = 8
    Top = 8
    Width = 56
    Height = 21
    Caption = 'SWF URL:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabelFX2: TsLabelFX
    Left = 8
    Top = 72
    Width = 74
    Height = 21
    Caption = 'Other Things:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object TextSWF: TsEdit
    Left = 70
    Top = 8
    Width = 318
    Height = 21
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    Text = 'http://'
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
  object ButtonLoadArmor: TsButton
    Left = 8
    Top = 35
    Width = 185
    Height = 25
    Caption = 'Load As Armor'
    TabOrder = 1
    OnClick = ButtonLoadArmorClick
    SkinData.SkinSection = 'BUTTON'
  end
  object ButtonLoadWeapon: TsButton
    Left = 199
    Top = 35
    Width = 189
    Height = 25
    Caption = 'Load As Weapon'
    TabOrder = 2
    OnClick = ButtonLoadWeaponClick
    SkinData.SkinSection = 'BUTTON'
  end
  object sPanel1: TsPanel
    Left = 8
    Top = 99
    Width = 380
    Height = 340
    TabOrder = 3
    SkinData.SkinSection = 'PANEL'
    object sLabelFX3: TsLabelFX
      Left = 8
      Top = 16
      Width = 63
      Height = 21
      Caption = 'New Name:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabelFX4: TsLabelFX
      Left = 8
      Top = 56
      Width = 224
      Height = 21
      Caption = 'Advanced Messaging With Complete Control:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabelFX5: TsLabelFX
      Left = 40
      Top = 83
      Width = 81
      Height = 21
      Caption = 'Message Type:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabelFX6: TsLabelFX
      Left = 40
      Top = 110
      Width = 54
      Height = 21
      Caption = 'Message:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabelFX7: TsLabelFX
      Left = 40
      Top = 137
      Width = 44
      Height = 21
      Caption = 'Owner:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabelFX8: TsLabelFX
      Left = 40
      Top = 164
      Width = 23
      Height = 21
      Caption = 'ID:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object sLabelFX9: TsLabelFX
      Left = 8
      Top = 232
      Width = 106
      Height = 21
      Caption = 'Message Box String:'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
    end
    object TextNewName: TsEdit
      Left = 77
      Top = 16
      Width = 229
      Height = 21
      Color = 16380653
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Isair'
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
    object ButtonChangeName: TsButton
      Left = 312
      Top = 14
      Width = 58
      Height = 20
      Caption = 'Change It!'
      TabOrder = 1
      OnClick = ButtonChangeNameClick
      SkinData.SkinSection = 'BUTTON'
    end
    object TextMessageType: TsEdit
      Left = 127
      Top = 83
      Width = 179
      Height = 21
      Color = 16380653
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Text = 'moderator'
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
    object ButtonSendMessage: TsButton
      Left = 40
      Top = 191
      Width = 266
      Height = 25
      Caption = 'Send Message!'
      TabOrder = 3
      OnClick = ButtonSendMessageClick
      SkinData.SkinSection = 'BUTTON'
    end
    object TextMessage: TsEdit
      Left = 127
      Top = 110
      Width = 179
      Height = 21
      Color = 16380653
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'I love Hell Quest!'
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
    object TextOwner: TsEdit
      Left = 127
      Top = 137
      Width = 179
      Height = 21
      Color = 16380653
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = '[Artix]'
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
    object TextID: TsEdit
      Left = 127
      Top = 164
      Width = 179
      Height = 21
      Color = 16380653
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      Text = '0'
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
    object TextMessageBox: TsEdit
      Left = 129
      Top = 232
      Width = 177
      Height = 21
      Color = 16380653
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = 'This is a message box!'
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
    object ButtonMessageBox: TsButton
      Left = 312
      Top = 232
      Width = 58
      Height = 25
      Caption = 'Show!'
      TabOrder = 8
      OnClick = ButtonMessageBoxClick
      SkinData.SkinSection = 'BUTTON'
    end
    object ButtonLevelUp: TsButton
      Left = 8
      Top = 263
      Width = 362
      Height = 25
      Caption = 'Click To Display Level Up Effect!'
      TabOrder = 9
      OnClick = ButtonLevelUpClick
      SkinData.SkinSection = 'BUTTON'
    end
  end
end
