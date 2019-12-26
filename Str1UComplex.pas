unit UComplex;

interface

uses
  SysUtils;

type
  TComplex = record
    realPart: real;
    imagPart: real;
   end;

// ������������� ������������ �����
function InitComplex(ARealPart, AImagPart: real): TComplex;

// ������ ������������ �����
procedure WriteComplex(z:Tcomplex);

// ������ ������������ �����
function ReadComplex(txt:string):TComplex;

function GetNumber(txt:string; min, max:integer):integer;

implementation

function GetNumber(txt:string; min, max:integer):integer;
var
  str:string;
begin
  repeat
    if (txt <> '') then
      write(txt);
    readln(str);
  until TryStrToInt(str, Result) and (Result >= min) and (Result <= max);
end;

function InitComplex;
begin
  Result.realPart := ARealPart;
  Result.imagPart := AImagPart;
end;

procedure WriteComplex;
begin
  if (z.imagPart < 0) then
    write(z.realPart:0:2, ' - ', -z.imagPart:0:2, 'i')
  else
    write(z.realPart:0:2, ' + ', z.imagPart:0:2, 'i');
  writeln;
end;

function ReadComplex;
begin
  if txt <> '' then
    writeln(txt);
  Result.realPart:= GetNumber('������� �������� ����� �����: ',
                              Low(integer), High(integer));
  Result.imagPart:= GetNumber('������� ���������� ����� �����: ',
                              Low(integer), High(integer));
  write('�� ����� ����������� �����: ');
  WriteComplex(Result);
end;


end.

