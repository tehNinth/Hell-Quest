object AutoPilotForm: TAutoPilotForm
  Left = 0
  Top = 0
  Caption = 'Auto Pilot'
  ClientHeight = 231
  ClientWidth = 326
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnHide = FormHide
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object sLabel1: TsLabel
    Left = 16
    Top = 56
    Width = 83
    Height = 13
    Caption = 'Auto Piloting For:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object LabelTime: TsLabel
    Left = 105
    Top = 56
    Width = 139
    Height = 13
    Caption = ' 0 hours 0 minutes 0 seconds'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel2: TsLabel
    Left = 16
    Top = 88
    Width = 34
    Height = 13
    Caption = 'Action:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel3: TsLabel
    Left = 16
    Top = 128
    Width = 108
    Height = 13
    Caption = 'Total Experience Gain:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel4: TsLabel
    Left = 16
    Top = 160
    Width = 76
    Height = 13
    Caption = 'Total Gold Gain:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel5: TsLabel
    Left = 16
    Top = 192
    Width = 64
    Height = 13
    Caption = 'Current Map:'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object LabelMap: TsLabel
    Left = 86
    Top = 192
    Width = 3
    Height = 13
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel7: TsLabel
    Left = 98
    Top = 160
    Width = 6
    Height = 13
    Caption = '0'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel8: TsLabel
    Left = 130
    Top = 128
    Width = 6
    Height = 13
    Caption = '0'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object sLabel9: TsLabel
    Left = 56
    Top = 88
    Width = 235
    Height = 13
    Caption = 'Doing nothing as auto-pilot is not complete yet...'
    ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 14603725
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object StopAutoPilot: TsButton
    Left = 8
    Top = 8
    Width = 310
    Height = 25
    Caption = 'Stop Auto-Pilot'
    TabOrder = 0
    OnClick = StopAutoPilotClick
    SkinData.SkinSection = 'BUTTON'
  end
  object Counter: TTimer
    Enabled = False
    OnTimer = CounterTimer
    Left = 8
    Top = 200
  end
end
