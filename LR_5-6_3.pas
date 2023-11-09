program LR_56_3;
const
  n = 20;
var
  a: array[1..n] of integer;
  i, k, max, maxind, min, minind, last, lastind: int64;
begin
  for i := 1 to n do
    a[i] := random(-52, 65);
  writeln(a);
  max := a[1];
  maxind := 1;
  for i:=2 to n do
    if a[i] > max then 
    begin
      max := a[i];
      maxind := i;
    end;
  writeln('Максимальный элемент: ', max);
  writeln('Индекс максимального элемента: ', maxind);
  writeln;
  k := 1;
  for i:=1 to n do
    if (a[k] > 0) then min := a[k]
      else inc(k);
  minind := 1;
  for i:=2 to n do
    if (a[i] < min) and (a[i] > 0) then
    begin
      min := a[i];
      minind := i;
    end;
  writeln('Минимальный положительный элемент: ', min);
  writeln('Индекс минимального элемента: ', minind);
  writeln;
  
  for i:=1 to n do
    if (a[i] mod 5 = 0) then
    begin
      last := a[i];
      lastind := i;
    end;
  writeln('Последний элемент массива, который кратен 5: ', last);
  writeln('Номер элемента: ', lastind)
end.