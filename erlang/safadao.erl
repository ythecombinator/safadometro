-module(safadao).
-export([safadeza/3]).


safadeza(Dia, Mes, Ano) ->
	safadeza(Dia, Mes, Ano, 0).


safadeza(Dia, 0, Ano, FatorSafadao) -> 
	Safadeza = FatorSafadao + (( Ano / 100.0 ) * ( 50 - Dia )),
	Anjo = 100.0 - Safadeza,
	{ Safadeza, Anjo }; 

safadeza(Dia, Mes, Ano, FatorSafadao ) ->	
	safadeza(Dia, Mes - 1, Ano, FatorSafadao + Mes ).
	

	
