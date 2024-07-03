object frmMainFormQueueNotQueuing: TfrmMainFormQueueNotQueuing
  Left = 0
  Top = 0
  Caption = 'Queue is not Queuing'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnThreadDemo: TButton
    Left = 24
    Top = 24
    Width = 305
    Height = 49
    Caption = 'Thread Demo'
    TabOrder = 0
    OnClick = btnThreadDemoClick
  end
  object btnMainThreadDemo: TButton
    Left = 24
    Top = 96
    Width = 305
    Height = 57
    Caption = 'Main Thread Demo'
    TabOrder = 1
    OnClick = btnMainThreadDemoClick
  end
  object btnForceQueue: TButton
    Left = 24
    Top = 176
    Width = 305
    Height = 57
    Caption = 'Force Queue'
    TabOrder = 2
    OnClick = btnForceQueueClick
  end
end
