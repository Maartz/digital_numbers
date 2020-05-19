defmodule DigitalNumbersNaive do
  @moduledoc """
  This module represents a naive approache for rendering numbers in the LCD clock fashion.
  It leverages a nested attribute map with string numbers as keys to another map.
  This map contains 3 elements which represent the rows of the `ASCII` number.

  Using a `for` macro, it iterates through the created list and simply puts the values in the `stdio`.
  """

  @numbers_rows %{
    "0" => %{"top" => " _ ", "mid" => "| |", "bot" => "|_|"},
    "1" => %{"top" => "   ", "mid" => "  |", "bot" => "  |"},
    "2" => %{"top" => " _ ", "mid" => " _|", "bot" => "|_ "},
    "3" => %{"top" => " _ ", "mid" => " _|", "bot" => " _|"},
    "4" => %{"top" => "   ", "mid" => "|_|", "bot" => "  |"},
    "5" => %{"top" => " _ ", "mid" => "|_ ", "bot" => " _|"},
    "6" => %{"top" => " _ ", "mid" => " |_ ", "bot" => "|_|"},
    "7" => %{"top" => " _ ", "mid" => "  |", "bot" => "  |"},
    "8" => %{"top" => " _ ", "mid" => "|_|", "bot" => "|_|"},
    "9" => %{"top" => " _ ", "mid" => "|_|", "bot" => "  |"}
  }

  @spec print(integer) :: [any]
  def print(input) do
    input =
      input
      |> Integer.to_string()
      |> String.split("", trim: true)

    for number <- input do
      map = Map.get(@numbers_rows, number)
      IO.puts(map["top"])
      IO.puts(map["mid"])
      IO.puts(map["bot"])
    end
  end
end
