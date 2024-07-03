object frmCustomExceptionDialog: TfrmCustomExceptionDialog
  Left = 0
  Top = 0
  Caption = 'Error'
  ClientHeight = 441
  ClientWidth = 731
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblUserFriendlyMessage: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 20
    Width = 691
    Height = 15
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alTop
    Caption = 'User friendly message goes here'
    ExplicitLeft = 25
  end
  object lblTechnicalDetails: TLabel
    AlignWithMargins = True
    Left = 20
    Top = 75
    Width = 691
    Height = 15
    Margins.Left = 20
    Margins.Top = 20
    Margins.Right = 20
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Technical details here'
    ExplicitWidth = 112
  end
  object mmoTechnicalDetails: TMemo
    AlignWithMargins = True
    Left = 20
    Top = 100
    Width = 691
    Height = 264
    Margins.Left = 20
    Margins.Top = 10
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    StyleElements = [seClient, seBorder]
  end
  object btnClose: TButton
    AlignWithMargins = True
    Left = 20
    Top = 384
    Width = 691
    Height = 37
    Margins.Left = 20
    Margins.Top = 0
    Margins.Right = 20
    Margins.Bottom = 20
    Align = alBottom
    Caption = 'Close'
    ModalResult = 8
    TabOrder = 1
  end
end
