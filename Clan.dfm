object ClanForm: TClanForm
  Left = 192
  Top = 124
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Character Page'
  ClientHeight = 401
  ClientWidth = 600
  Color = clBlack
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
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 48
    Width = 600
    Height = 353
    TabOrder = 0
    ControlData = {
      4C000000033E00007C2400000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object ButtonLogin: TsButton
    Left = 136
    Top = 8
    Width = 328
    Height = 25
    Caption = 'Select Character page to View'
    TabOrder = 1
    OnClick = ButtonLoginClick
    SkinData.SkinSection = 'BUTTON'
  end
end
