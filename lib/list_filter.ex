defmodule ListFilter do
  def call(list) do
    numerics = filter_number(list)
    numbers = parse_number(numerics)
    odds = filter_odds(numbers)
    odds
  end

  defp parse_number(list) do
    numbers_parsed = Enum.map(list, fn elem -> String.to_integer(elem) end)
    numbers_parsed
  end

  defp filter_number(list) do
    numerics = Enum.filter(list, fn elem -> String.match?(elem, ~r/\d+/) end)
    numerics
  end

  defp filter_odds(list) do
    numbers_odds = Enum.filter(list, fn elem -> Integer.mod(elem, 2) == 1 end)
    numbers_odds
  end
end
