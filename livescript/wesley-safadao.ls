sum = (n) -> [1 to n].reduce (+), 0

wesley-safadao = ({day, month, year}) ->
  safadeza = (month |> sum) + (year / 100) * (50 - day)
  anjo = 100 - safadeza
  "Você é #{safadeza.to-fixed 2}% safado e {anjo.to-fixed 2}% anjo" |> alert
