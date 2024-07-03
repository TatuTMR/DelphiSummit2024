unit MainFormQueueNotQueuing;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMainFormQueueNotQueuing = class(TForm)
    btnThreadDemo: TButton;
    btnMainThreadDemo: TButton;
    btnForceQueue: TButton;
    procedure btnThreadDemoClick(Sender: TObject);
    procedure btnMainThreadDemoClick(Sender: TObject);
    procedure btnForceQueueClick(Sender: TObject);
  public
    { Public declarations }
  end;

var
  frmMainFormQueueNotQueuing: TfrmMainFormQueueNotQueuing;

implementation

{$R *.dfm}

uses
  System.Threading;

procedure TfrmMainFormQueueNotQueuing.btnForceQueueClick(Sender: TObject);
begin
  Caption := '';

  TThread.ForceQueue(nil,
    procedure
    begin
      Caption := Caption + 'ForceQueue ';
    end);
  TThread.Synchronize(nil,
    procedure
    begin
      Caption := Caption + 'Synchronize ';
    end);
  Caption := Caption + 'MethodEnd ';
end;

procedure TfrmMainFormQueueNotQueuing.btnMainThreadDemoClick(Sender: TObject);
begin
  Caption := string.Empty;
  TThread.Queue(nil,
    procedure
    begin
      Caption := Caption + 'Queue ';
    end);
  TThread.Synchronize(nil,
    procedure
    begin
      Caption := Caption + 'Synchronize ';
    end);
  Caption := Caption + 'MethodEnd ';
end;

procedure TfrmMainFormQueueNotQueuing.btnThreadDemoClick(Sender: TObject);
begin
  Caption := string.Empty;
  TTask.Run(
    procedure
    begin
      TThread.Queue(nil,
        procedure
        begin
          Caption := Caption + 'Queue ';
        end);
      TThread.Synchronize(nil,
        procedure
        begin
          Caption := Caption + 'Synchronize ';
        end);
    end);
  Caption := Caption + 'MethodEnd ';
end;

end.
