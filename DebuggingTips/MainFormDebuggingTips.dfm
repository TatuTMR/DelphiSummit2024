object frmDebuggingTips: TfrmDebuggingTips
  Left = 0
  Top = 0
  Caption = 'Debugging Tips'
  ClientHeight = 441
  ClientWidth = 761
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnObserverEffect: TButton
    Left = 16
    Top = 32
    Width = 281
    Height = 57
    Caption = 'Observer effect'
    TabOrder = 0
    OnClick = btnObserverEffectClick
  end
  object mmoResults: TMemo
    Left = 344
    Top = 32
    Width = 393
    Height = 385
    TabOrder = 3
  end
  object btnIsDebuggerPresent: TButton
    Left = 16
    Top = 112
    Width = 281
    Height = 57
    Caption = 'IsDebuggerPresent'
    TabOrder = 1
    OnClick = btnIsDebuggerPresentClick
  end
  object btnDataBreakpoint: TButton
    Left = 16
    Top = 192
    Width = 281
    Height = 57
    Caption = 'Data Breakpoint'
    TabOrder = 2
    OnClick = btnDataBreakpointClick
  end
end
