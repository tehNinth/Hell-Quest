object UpdateForm: TUpdateForm
  Left = 137
  Top = 100
  Caption = 'Update Checker'
  ClientHeight = 198
  ClientWidth = 563
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
  object UpdateBrowser: TWebBrowser
    Left = 0
    Top = 0
    Width = 561
    Height = 201
    TabOrder = 0
    ControlData = {
      4C000000FB390000C61400000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object LoadingPanel: TsPanel
    Left = 0
    Top = 0
    Width = 561
    Height = 201
    TabOrder = 1
    SkinData.SkinSection = 'PANEL'
    object LoadingText: TsLabelFX
      Left = 0
      Top = 94
      Width = 561
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
    end
  end
  object Timer: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = TimerTimer
    Left = 448
    Top = 40
  end
end
