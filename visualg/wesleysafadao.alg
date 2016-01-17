algoritmo "Safadometro"
var
  dia, mes, ano: Inteiro
  
Funcao somatorio(n:Inteiro): Inteiro
var
  cont, s: Inteiro
inicio
   s <- 0
   Para cont <- 1 ate n faca
      s <- s + cont
   FimPara
   Retorne s
FimFuncao

Procedimento WesleySafadao(d, m, a: Inteiro)
var
   safado, anjo: Real
inicio
   safado <- somatorio(m) + (a/100) * (50-d)
   anjo <- 100 - safado
   EscrevaL(anjo, "% ANJO")
   EscrevaL("Mas aquele ", safado, "% é VAGABUNDO")
FimProcedimento
  
inicio
    Escreva("Dia: ")
    Leia(dia)
    Escreva("Mes: ")
    Leia(mes)
    Escreva("Ano: ")
    Leia(ano)
    WesleySafadao(dia, mes, ano)
fimalgoritmo