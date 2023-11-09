program LR_56_4;
const 
  n = 30;
var
  i: integer;
  A: array [1..n] of integer;
  B: array [1..n] of integer;
begin
  for i:=1 to n do
  begin
    A[i]:= random(-99, 67);
    write (A[i], ' ');
  end;
  writeln;
  for i:=1 to n do
  begin
    if (a[i] mod 2 = 0) then 
    begin
    b[i] := a[i];
    write (b[i], ' ');
    end;
  end;
end.