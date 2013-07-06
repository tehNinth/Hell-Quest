object THWGAForm: TTHWGAForm
  Left = 200
  Top = 220
  BorderStyle = bsNone
  Caption = 'THWGA Check'
  ClientHeight = 135
  ClientWidth = 638
  Color = clBlack
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bar: TsGauge
    Left = 8
    Top = 96
    Width = 617
    Height = 30
    SkinData.SkinSection = 'GAUGE'
    ForeColor = clBlack
    Progress = 0
    Suffix = '%'
  end
  object Status: TsLabelFX
    Left = 47
    Top = 56
    Width = 155
    Height = 21
    Caption = 'Gathering System Information...'
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
  object sLabelFX1: TsLabelFX
    Left = 8
    Top = 56
    Width = 41
    Height = 21
    Caption = 'Status:'
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
    Top = 16
    Width = 403
    Height = 21
    Caption = 
      'Checking this copy of Hell Quest for any modifications before st' +
      'arting. Please wait....'
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
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 560
    Top = 40
  end
end
