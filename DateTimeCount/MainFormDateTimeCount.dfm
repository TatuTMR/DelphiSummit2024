object frmMainFormDateTimeCount: TfrmMainFormDateTimeCount
  Left = 0
  Top = 0
  Caption = 'Date Time Count'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblDateTimeCount: TLabel
    Left = 0
    Top = 0
    Width = 624
    Height = 441
    Align = alClient
    Alignment = taCenter
    Caption = '0,0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    Layout = tlCenter
    ExplicitWidth = 62
    ExplicitHeight = 65
  end
  object tmrUpdateCount: TTimer
    Interval = 200
    OnTimer = tmrUpdateCountTimer
    Left = 480
    Top = 64
  end
end
