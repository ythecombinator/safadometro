defmodule WesleySafadao do

  @spec sum(non_neg_integer) :: non_neg_integer
  def sum(month) do
    Enum.reduce(0..month, &:erlang.+/2)
  end

  @spec lewdness({non_neg_integer, non_neg_integer, non_neg_integer}) :: number
  def lewdness({year, month, day}) when year > 99 do
    lewdness({year - 100, month, day})
  end

  def lewdness({year, month, day}) do
    sum(month) + (year / 100) * (50 - day)
  end

  @spec chasteness(integer) :: number
  def chasteness(lewdness), do: 100 - lewdness

  @spec exec({non_neg_integer, non_neg_integer, non_neg_integer}) :: String.t
  def exec(date = {_year, _month, _day}) do
    lewdness = lewdness(date)
    chasteness = chasteness(lewdness)

    "Você é #{lewdness}% safado/a e #{chasteness}% anjo/a"
  end
end