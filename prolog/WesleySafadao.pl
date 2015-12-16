sum(0, 0).
sum(Month,SumMonths) :- Month > 0, Month1 is Month - 1, sum(Month1, SumMonths1), SumMonths is Month + SumMonths1.

safadoCalculus(Year,Month,Day,Safadeza) :- sum(Month, SumMonths), Safadeza is SumMonths + ((Year/100) * (50 - Day)).

printToScreen(Safadeza) :- Anjo is 100 - Safadeza, write("Você é "), write(Safadeza), write("% safado e "), write(Anjo), write("% anjo.").