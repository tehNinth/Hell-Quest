object HellViewerForm: THellViewerForm
  Left = 212
  Top = 145
  Caption = 'Hell Viewer'
  ClientHeight = 376
  ClientWidth = 673
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesigned
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object HellBrowser: TWebBrowser
    Left = 0
    Top = 0
    Width = 673
    Height = 377
    TabOrder = 0
    ControlData = {
      4C0000008E450000F72600000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object PanelLoading: TsPanel
    Left = 0
    Top = 0
    Width = 673
    Height = 377
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object LabelLoading: TsLabelFX
      Left = 0
      Top = 158
      Width = 673
      Height = 21
      Alignment = taCenter
      AutoSize = False
      Caption = 'Loading...'
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 14603725
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
  end
  object Timer: TTimer
    Enabled = False
    OnTimer = TimerTimer
    Left = 256
    Top = 8
  end
end
