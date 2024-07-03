unit MainFormDebuggingTips;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmDebuggingTips = class(TForm)
    btnObserverEffect: TButton;
    mmoResults: TMemo;
    btnIsDebuggerPresent: TButton;
    btnDataBreakpoint: TButton;
    procedure btnObserverEffectClick(Sender: TObject);
    procedure btnIsDebuggerPresentClick(Sender: TObject);
    procedure btnDataBreakpointClick(Sender: TObject);
  strict private const
    ARRAY_LENGTH = 4;
  strict private
    FSomeOtherData: Int8;
    FArray: array[1..ARRAY_LENGTH] of Int8;
  strict protected
    function GetANumber: UInt8; virtual;
    function GetARandomNumber: UInt8; virtual;
    function GetMoreRandomNumbers(const pCount: UInt8): TArray<UInt8>;
  end;

var
  frmDebuggingTips: TfrmDebuggingTips;

implementation

{$R *.dfm}

uses
  System.Diagnostics,
  System.IOUtils;

procedure TfrmDebuggingTips.btnDataBreakpointClick(Sender: TObject);
begin
  FSomeOtherData := 100;

  for var lI := ARRAY_LENGTH downto 0 do
  begin
    FArray[lI] := lI;
  end;

  mmoResults.Lines.Add(
    Format('SomeOtherData should be 100, but it is... %d.', [FSomeOtherData]));
end;

procedure TfrmDebuggingTips.btnIsDebuggerPresentClick(Sender: TObject);
begin
  var lPath := TPath.GetFullPath(TPath.Combine('.', 'logfiles'));

{$IFDEF DEBUG}
  if IsDebuggerPresent and TDirectory.Exists(lPath) then
  begin
    OutputDebugString(PChar('The logfiles path is: ' + lPath));
    TDirectory.Delete(lPath, True);
    ShowMessage('Logfiles cleared.');
//    OutputDebugString('Logfiles cleared.');
  end;
{$ENDIF}

  TDirectory.CreateDirectory(lPath);

  var lFileName := FormatDateTime('yyyymmddhhnnsszzz', Now) + '.log';

  TFile.AppendAllText(
    TPath.Combine(lPath, lFileName),
    'some log content here',
    TEncoding.UTF8);
end;

procedure TfrmDebuggingTips.btnObserverEffectClick(Sender: TObject);
{$endregion}
begin
  var lStopwatch := TStopwatch.StartNew;
  var lCount := GetANumber;

//  ShowMessage(lCount.ToString);
  OutputDebugString(PChar(lCount.ToString));

  var lRandomNumbers := GetMoreRandomNumbers(lCount);
  var lSum: UInt32 := 0;

  for var lNumber in lRandomNumbers do
  begin
    Inc(lSum, lNumber);
  end;

  var lAverage := lSum / Length(lRandomNumbers);

  lStopwatch.Stop;

  mmoResults.Lines.Add(
    Format('The average is %1.3f (evaluated in %d msecs)',
    [lAverage, lStopwatch.ElapsedMilliseconds]));
end;

function TfrmDebuggingTips.GetANumber: UInt8;
begin
  Result := 10;
end;

function TfrmDebuggingTips.GetARandomNumber: UInt8;
begin
  Result := Random(10) + 1;
end;

function TfrmDebuggingTips.GetMoreRandomNumbers(const pCount: UInt8): TArray<UInt8>;
var
  lI: Int16;
begin
  SetLength(Result, pCount);
  for lI := 0 to pCount - 1 do
  begin
    Result[lI] := Random(High(UInt8));
  end;
end;

end.
