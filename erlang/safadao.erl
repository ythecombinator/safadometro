-module(safadao).
-export([safadeza/3]).


safadeza(Dia, Mes, Ano) ->
	safadeza(Dia, Mes, Ano, 0).


safadeza(Dia, 0, Ano, FatorSafadao) -> 
	AnoSafado = Ano div 100,
	DiaSafado = 50 - Dia,
	Safadeza = FatorSafadao + (AnoSafado * DiaSafado),
	Anjo = 100 - Safadeza,
	io:format("~p% anjo, perfeito, mas aquele ~p% ... \n", [ Anjo, Safadeza ] );

safadeza(Dia, Mes, Ano, FatorSafadao ) ->	
	safadeza(Dia, Mes - 1, Ano, FatorSafadao + Mes ).
	

	
