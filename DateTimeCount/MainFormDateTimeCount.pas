unit MainFormDateTimeCount;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TfrmMainFormDateTimeCount = class(TForm)
    lblDateTimeCount: TLabel;
    tmrUpdateCount: TTimer;
    procedure tmrUpdateCountTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMainFormDateTimeCount: TfrmMainFormDateTimeCount;

implementation

{$R *.dfm}

procedure TfrmMainFormDateTimeCount.tmrUpdateCountTimer(Sender: TObject);
begin
  lblDateTimeCount.Caption := FloatToStr(Now);
end;

end.
