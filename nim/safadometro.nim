proc somatorio(n: int): int =
  result = 0
  for i in 1..n:
    result += i

proc wesley_safadao(dia, mes, ano: int) =
  var safadeza = float(somatorio mes) + (ano / 100) * float(50 - dia)
  var anjo = 100 - safadeza

  echo "Você é ", anjo, "% anjo e ", safadeza, "% safado."

when isMainModule:
  wesley_safadao 6, 9, 88
