defmodule WesleySafadao do
  def lewdness({y, m, d}) when y > 99, do: lewdness({y - 100, m, d})
  def lewdness({y, m, d}), do: Enum.sum(1..m) + (y / 100) * (50 - d)

  def chasteness(lewd), do: 100 - lewd

  def tell_lewdness(birthday) do
    lewd = lewdness(birthday)
    format = &Float.to_string(&1, decimals: 2, compact: true)
    
    IO.puts "Você é #{lewd |> format.()}% safado/a e #{lewd |> chasteness() |> format.()}% anjo/a"
  end
end