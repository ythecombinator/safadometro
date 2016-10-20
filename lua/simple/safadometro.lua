local function somatorio(n)
  local result = 0

  for i=1,n do
    result = result + i
  end

  return result
end

local function wesley_safadao(dia, mes, ano)
  local safadeza = somatorio(mes) + (ano / 100) * (50 - dia)
  local anjo = 100 - safadeza

  print("Você é " .. anjo .. "% anjo e " .. safadeza .. "% safado.")
end

return wesley_safadao
