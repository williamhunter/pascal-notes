program MatrixOperations;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes,
  MatrixTools;

type
  TDoubleArray = array of double;

var
  A, B: TDoubleArray;

begin
  A := TDoubleArray.Create(1, 2, 3, 4, 5);
  Writeln(Length(A), ' ', A[0]:1:2);
  B := MtxReverse(A);
  Writeln(Length(B), ' ', B[4]:1:2);
  ReadLn;
end.



