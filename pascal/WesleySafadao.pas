program WesleySafadao;
uses SysUtils;

function SumRange(N : Integer): Integer;
var Sum : Integer;
var I : Integer;
begin
  Sum := 0;
  for I := 0 to n do
  begin
    Sum += I
  end;
  SumRange := Sum
end;

function Anjo(Safadeza : Double): Double;
begin
  Anjo := 100 - Safadeza
end;

function Safadeza(Day, Month, Year : Integer): Double;
begin
  Safadeza := SumRange(Month) + (Year / 100) * (50 - Day)
end;

procedure WesleySafadao(Day, Month, Year : Integer);
var S : Double;
var A : Double;
begin
  S := Safadeza(Day, Month, Year);
  A := Anjo(S);
  WriteLn('Você é ' + FormatFloat('0.00', S) + '% safado e ' +
    FormatFloat('0.00', A) + '% anjo');
end;
