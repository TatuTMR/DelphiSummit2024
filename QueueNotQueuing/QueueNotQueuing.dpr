program QueueNotQueuing;

uses
  Vcl.Forms,
  MainFormQueueNotQueuing in 'MainFormQueueNotQueuing.pas' {frmMainFormQueueNotQueuing};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainFormQueueNotQueuing, frmMainFormQueueNotQueuing);
  Application.Run;
end.
