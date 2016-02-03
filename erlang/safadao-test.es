#!/usr/bin/env escript

-import(safadao, [safadeza/3]).

main([Dia, Mes, Ano]) ->
	safadao:safadeza(list_to_integer(Dia), list_to_integer(Mes), list_to_integer(Ano)).
