program LR_56_12;
const
  z = 40; //массив может максимум разве что удвоиться
var
  i, n, j, m: integer;
  a: array [1..z] of integer;
begin
  m := 20; //изначальный размер массива
  writeln('Изначальный массив:');
  for i := 1 to m do
  begin
    a[i] := random(-99, 99); 
    write(A[i], ' ');
  end;
  writeln;
  i := 1;
  while i <= m do
  begin
    if a[i] > 0 then
    begin
      inc(m);
      for j := m downto i + 1 do a[j] := a[j - 1]; //сдвигаем все элементы до текущего
      a[i] := 0; //на его место пишем 0
      i := i + 2;
    end
    else i := i + 1;
  end;
  writeln('Массив после вставки нолей:');
  for i := 1 to m do
    write(a[i], ' ');
end.