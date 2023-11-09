program LR_56_2;
const
  n = 20;
var
  a: array[1..n] of integer;
  i, j, k, c, b, s: int64;
begin
  k := 1;
  for i := 1 to n do
  begin
    a[i] := random(-22, 93);
    write(a[i], ' ');
  end;
  writeln;
  for i := 1 to n step 2 do
    if (a[i] mod 2 = 0) then inc(j);
  for i:=1 to n do
    if (a[i] mod 2 <> 0) then k := k * a[i];
  writeln('Количество чётных элементов массива, стоящих на нечётных местах: ', j);
  writeln('Произведение нечётных элементов массива: ', k);
  writeln ('Введите промежуток:');
  read(c, b);
  while (c<=b) do
  begin
    s := s+a[c];
    inc(c);
  end;
  writeln('Сумма элементов массива, принадлежащих заданному промежутку: ', s)
end.