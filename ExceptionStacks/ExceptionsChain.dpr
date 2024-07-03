program ExceptionsChain;

uses
  Vcl.Forms,
  MainFormExceptionsChain in 'MainFormExceptionsChain.pas' {frmExceptionsChain},
  MyCustomSQLException in 'MyCustomSQLException.pas',
  MyCustomExceptionDialog in 'MyCustomExceptionDialog.pas' {frmCustomExceptionDialog};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmExceptionsChain, frmExceptionsChain);
  Application.Run;
end.
