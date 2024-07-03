object frmExceptionsChain: TfrmExceptionsChain
  Left = 0
  Top = 0
  Caption = 'Exception Chain'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object btnExceptionReplacement: TButton
    Left = 24
    Top = 32
    Width = 409
    Height = 49
    Caption = 'Exception Replacement'
    TabOrder = 0
    OnClick = btnExceptionReplacementClick
  end
  object ApplicationEvents1: TApplicationEvents
    OnException = ApplicationEvents1Exception
    Left = 504
    Top = 144
  end
end
