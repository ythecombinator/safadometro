
Function SumMonth( n )
  Local nI
  Local nSum
  For nI := 0 To n
    nSum += n
  Next nI
  Return nSum

Function WesleySafadao( nDay, nMonth, nYear )
  Local nSafadeza := SumMonth( nMonth ) + ( nYear / 100 ) * ( 50 - nDay )
  Local nAnjo := 100 - nSafadeza

  ? "Você é " + Str( NoRound( nSafadeza ) ) + "% safado e " +;
    Str( NoRound( nAnjo ) ) + "% anjo"

  Return Nil
