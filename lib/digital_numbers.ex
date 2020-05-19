defmodule DigitalNumbers do
  @moduledoc """
  DigitalNumbers module provides an API to convert integer to LCD styled string integer
  """

  @digital_numbers %{
    0 => """
          _
         | |
         |_|
         """,
    1 => """

           |
           |
         """,
    2 => """
          _
          _|
         |_
         """,
    3 => """
          _
          _|
          _|
         """,
    4 => """

         |_|
           |
         """,
    5 => """
          _
         |_
          _|
         """,
    6 => """
          _
         |_
         |_|
         """,
    7 => """
          _
           |
           |
         """,
    8 => """
          _
         |_|
         |_|
         """,
    9 => """
          _
         |_|
           |
         """,
  }


 @spec print(any) :: :ok | <<_::520>>
 @doc """
 Print in the console the input in a LCD clock fashion.

 ## Examples

   iex> DigitalNumbers.print("1221")
   "feed me only with positive integer (╯°□°）╯︵ ┻━┻"

   iex> DigitalNumbers.print(:ok)
   "feed me only with positive integer (╯°□°）╯︵ ┻━┻"

 """
 def print(input)  when is_integer(input) and input >= 0 do
   input|> compute_value() |> IO.puts
 end

 def print(_) do
  "feed me only with positive integer (╯°□°）╯︵ ┻━┻"
 end


 @spec compute_value(any) :: <<_::520>> | [any]
 def compute_value(input \\ 0)do
    input
    |> parse_and_split()
    |> Stream.map(&String.to_integer/1)
    |> Stream.map(&transform_input_to_digital/1)
    |> Enum.reduce([], fn number, acc -> [number | acc] end)
    |> Enum.reverse()
  end

  @spec transform_input_to_digital(any) :: any
  @doc """
  Parse the input as the key and get it from the module attribute printing a string formated value.

  ## Examples

      iex> DigitalNumbers.transform_input_to_digital(2)
      " _\\n _|\\n|_\\n"

  """
  def transform_input_to_digital(input) do
    Map.get(@digital_numbers, input)
  end

  # Convert the number based input in a list of string(s).
  defp parse_and_split(input) do
    input
    |> Integer.to_string()
    |> String.split("", trim: true)
  end

end
