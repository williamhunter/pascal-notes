unit MatrixTools;

{$mode objfpc}{$H+}

interface

type
  MyArray = array of double;

function MtxReverse(AnArray: MyArray): MyArray;

implementation

function MtxReverse(AnArray: MyArray): MyArray;
var
  i : integer;
  tmp: double;
begin
  for i := 0 to 4 do
  begin
    tmp := AnArray[4 - i];
    AnArray[i] := tmp;
  end;
  Result := AnArray;
end;



end.

