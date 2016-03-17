FUNCTION SumMonth(n)
  LOCAL nSum := 0
  LOCAL nI
  FOR nI := 0 TO n
    nSum += nI
  NEXT nI
  RETURN nSum

FUNCTION WesleySafadao( nDay, nMonth, nYear )
  LOCAL nSafadeza := 0
  LOCAL nAnjo := 0
  nSafadeza:= SumMonth( nMonth ) + ( nYear / 100 ) * ( 50 - nDay )
  nAnjo := (100 - nSafadeza)
  RETURN "Voce eh "+ ALLTRIM(STR(nSafadeza)) +"% safado e "+ ALLTRIM(STR(nAnjo)) +"% anjo"
