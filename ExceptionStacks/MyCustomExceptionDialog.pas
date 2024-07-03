unit MyCustomExceptionDialog;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmCustomExceptionDialog = class(TForm)
    lblUserFriendlyMessage: TLabel;
    mmoTechnicalDetails: TMemo;
    lblTechnicalDetails: TLabel;
    btnClose: TButton;
  private
    { Private declarations }
  public
    class procedure HandleException(const pException: Exception);
  end;

var
  frmCustomExceptionDialog: TfrmCustomExceptionDialog;

implementation

{$R *.dfm}

uses
  MyCustomSQLException;

{ TfrmCustomExceptionDialog }

class procedure TfrmCustomExceptionDialog.HandleException(const pException: Exception);
begin
  var lInstance := Self.Create(nil);
  try
    lInstance.lblUserFriendlyMessage.Caption := pException.Message;

    var lPrefix := '> ';
    var lInnerException := pException.InnerException;

    while Assigned(lInnerException) do
    begin
      var lNewTechnicalDetail := Format('%s%s (%s)', [lPrefix, lInnerException.Message, lInnerException.ClassName]);

      if lInnerException is EMyCustomSQLException then
      begin
        lNewTechnicalDetail := lNewTechnicalDetail + sLineBreak +
          StringOfChar(' ', Length(lPrefix)) + 'SQL ' + EMyCustomSQLException(lInnerException).SQL;
      end;

      lInstance.mmoTechnicalDetails.Lines.Add(lNewTechnicalDetail);

      lInnerException := lInnerException.InnerException;
      lPrefix := '   ' + lPrefix;
    end;

    lInstance.ShowModal;
  finally
    lInstance.Free;
  end;
end;

end.
