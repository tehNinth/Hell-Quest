object FilterForm: TFilterForm
  Left = 211
  Top = 190
  AlphaBlend = True
  Caption = 'Filter Configuration Window'
  ClientHeight = 299
  ClientWidth = 528
  Color = clBtnText
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 144
    Top = 49
    Width = 56
    Height = 13
    Caption = 'Filter Name:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel2: TsLabel
    Left = 144
    Top = 109
    Width = 66
    Height = 13
    Caption = 'Replace This:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel3: TsLabel
    Left = 144
    Top = 136
    Width = 48
    Height = 13
    Caption = 'With This:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel4: TsLabel
    Left = 144
    Top = 171
    Width = 235
    Height = 13
    Caption = 'P.S: Received packet filtering is not complete yet!'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object sLabel5: TsLabel
    Left = 17
    Top = 19
    Width = 44
    Height = 13
    Caption = 'Filter List:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
  end
  object FilterList: TsListBox
    Left = 17
    Top = 38
    Width = 112
    Height = 212
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 0
    OnClick = FilterListClick
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
  object FilterName: TsEdit
    Left = 224
    Top = 46
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
    Text = 'New Filter'
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
  object SaveFilter: TsButton
    Left = 144
    Top = 190
    Width = 97
    Height = 27
    Caption = 'Save Changes'
    TabOrder = 2
    OnClick = SaveFilterClick
    SkinData.SkinSection = 'BUTTON'
  end
  object AddFilter: TsButton
    Left = 17
    Top = 256
    Width = 49
    Height = 25
    Caption = 'Add'
    TabOrder = 3
    OnClick = AddFilterClick
    SkinData.SkinSection = 'BUTTON'
  end
  object DeleteFilter: TsButton
    Left = 72
    Top = 256
    Width = 57
    Height = 25
    Caption = 'Delete'
    TabOrder = 4
    OnClick = DeleteFilterClick
    SkinData.SkinSection = 'BUTTON'
  end
  object FilterEnabled: TsCheckBox
    Left = 144
    Top = 79
    Width = 64
    Height = 19
    Caption = 'Enabled'
    Checked = True
    State = cbChecked
    TabOrder = 5
    SkinData.SkinSection = 'CHECKBOX'
    ImgChecked = 0
    ImgUnchecked = 0
  end
  object FilterOriginal: TsEdit
    Left = 224
    Top = 106
    Width = 281
    Height = 21
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    Text = 'Original Packet'
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
  object FilterReplacement: TsEdit
    Left = 224
    Top = 133
    Width = 281
    Height = 21
    Color = 16380653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    Text = 'Your Packet'
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
  object Open: TTimer
    Enabled = False
    Interval = 5
    OnTimer = OpenTimer
    Left = 472
    Top = 32
  end
end
