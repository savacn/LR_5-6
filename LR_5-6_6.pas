program LR_56_6;
const
  v = 10;
var
  a: array[1..v] of integer;
  i, n: integer;
begin
  for i:=1 to v do
    read(a[i]);
  for i:=2 to v do
    if (a[i] < a[i-1]) then n:=1;
  if n = 0 then writeln('Массив упорядочен по возрастанию')
    else writeln('Массив не упорядочен по возрастанию');
end.