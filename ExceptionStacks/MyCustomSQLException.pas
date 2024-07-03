unit MyCustomSQLException;

interface

uses
  System.SysUtils;

type
  EMyCustomSQLException = class(Exception)
  strict private
    FSQL: string;
  public
    constructor Create(const pMessage, pSQL: string);

    property SQL: string read FSQL;
  end;

implementation

{ EMyCustomSQLException }

constructor EMyCustomSQLException.Create(const pMessage, pSQL: string);
begin
  inherited Create(pMessage);

  FSQL := pSQL;
end;

end.
