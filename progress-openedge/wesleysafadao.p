   def input param pi_Dia as int no-undo.
   def input param pi_Mes as int no-undo.
   def input param pi_Ano as int no-undo.

   run DizSeOPercentualDeSafadezaEAnjoBaseadoNaData.
   return.

procedure DizSeOPercentualDeSafadezaEAnjoBaseadoNaData.

   def var vi_PercentualSafadeza as int no-undo.
   def var vi_PercentualAnjo     as int no-undo.

   run CalculaPercentualSafadeza ( output vi_PercentualSafadeza ).
   run CalculaPercentualAnjo     ( vi_PercentualSafadeza , output vi_PercentualAnjo     ).

   message
      'Você é ' vi_PercentualSafadeza '% safado e ' vi_PercentualAnjo '% anjo'
      view-as alert-box.

end procedure.

procedure CalculaPercentualSafadeza.
   def output param pi_PercentualSafadeza as int no-undo.

   def var vi_Atual as int no-undo.

   do vi_Atual = pi_Mes to 1 by -1.
      assign
         pi_PercentualSafadeza = pi_PercentualSafadeza + vi_Atual
         .
   end.

   assign
      pi_PercentualSafadeza = pi_PercentualSafadeza + ((pi_Ano / 100) * ( 50 - pi_Dia ))
      .

end procedure.

procedure CalculaPercentualAnjo.
   def input  param pi_PercentualSafadeza as int no-undo.
   def output param pi_PercentualAnjo     as int no-undo.

   assign
      pi_PercentualAnjo = 100 - pi_PercentualSafadeza
      .

end procedure.