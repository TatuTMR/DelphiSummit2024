unit MainFormExceptionsChain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.AppEvnts;

type
  TfrmExceptionsChain = class(TForm)
    btnExceptionReplacement: TButton;
    ApplicationEvents1: TApplicationEvents;
    procedure btnExceptionReplacementClick(Sender: TObject);
    procedure ApplicationEvents1Exception(Sender: TObject; E: Exception);
  strict private
    procedure RepositoryLevelMethod;
    procedure DomainLevelMethod;
  public
    procedure ViewLevelMethod;
  end;

var
  frmExceptionsChain: TfrmExceptionsChain;

implementation

{$R *.dfm}

uses
  System.UITypes,
  MyCustomSQLException,
  MyCustomExceptionDialog;

{ TfrmExceptionStacks }

procedure TfrmExceptionsChain.ApplicationEvents1Exception(Sender: TObject; E: Exception);
begin
//  MessageDlg(E.Message, TMsgDlgType.mtError, [mbOK], 0);
  TfrmCustomExceptionDialog.HandleException(E);
end;

procedure TfrmExceptionsChain.btnExceptionReplacementClick(Sender: TObject);
begin
  ViewLevelMethod;

  try
    DomainLevelMethod;
  except
    on E: Exception do
    begin
      raise Exception.Create('User friendly message here.');
    end;
  end;
end;

procedure TfrmExceptionsChain.DomainLevelMethod;
begin
  try
    RepositoryLevelMethod;
  except
//    raise Exception.Create('Domain level exception while trying to update a product.');
    on E: Exception do
    begin
      E.RaiseOuterException(Exception.Create('Domain level exception while trying to update a product.'));
    end;
  end;
end;

procedure TfrmExceptionsChain.RepositoryLevelMethod;
begin
  raise EMyCustomSQLException.Create(
    'Invalid SQL instruction',
    'update product set name = :name where');
end;

procedure TfrmExceptionsChain.ViewLevelMethod;
begin
  try
    DomainLevelMethod;
  except
    on E: Exception do
    begin
      E.RaiseOuterException(Exception.Create('User friendly message here.'));
    end;
  end;
end;

end.
