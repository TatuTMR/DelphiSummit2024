program DateTimeCount;

uses
  Vcl.Forms,
  MainFormDateTimeCount in 'MainFormDateTimeCount.pas' {frmMainFormDateTimeCount};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMainFormDateTimeCount, frmMainFormDateTimeCount);
  Application.Run;
end.
