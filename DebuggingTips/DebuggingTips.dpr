program DebuggingTips;

uses
  Vcl.Forms,
  MainFormDebuggingTips in 'MainFormDebuggingTips.pas' {frmDebuggingTips};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmDebuggingTips, frmDebuggingTips);
  Application.Run;
end.
