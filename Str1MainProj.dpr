program MainProj;

{$APPTYPE CONSOLE}

uses
  SysUtils,
  Windows,
  UComplex in 'UComplex.pas',
  UComplexOperations in 'UComplexOperations.pas';

var
  z, sum, part: Tcomplex;
  count: real;
  n, i: integer;

begin
   {������� ����}
  SetConsoleCP(1251);
  SetConsoleOutPutCP(1251);

  z:= ReadComplex('������� ����������� �����: ');

  n:= GetNumber('������� n: ', 0, 100);

  {������� ��������}
  sum:= InitComplex(0, 0);
  part:= InitComplex(1, 0);

  sum:= SumComplex(sum, part);

  for i:= 1 to n do
    begin
      part:= MultiplyComplex(part, z);
      part:= DivideComplex(part, i);
      sum:= SumComplex(sum, part);
    end;

  write('e^z = ');
  WriteComplex(sum);
  readln;

end.

