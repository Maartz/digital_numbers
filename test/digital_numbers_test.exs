defmodule DigitalNumbersTest do
  use ExUnit.Case
  doctest DigitalNumbers

  describe "compute_value/1" do
    test "with no input" do
      expected_value = [" _\n| |\n|_|\n"]

      refute DigitalNumbers.compute_value() == []
      assert DigitalNumbers.compute_value() == expected_value
    end

    test "with 3 digits value" do
      expected_value = [" _\n|_|\n  |\n", "\n  |\n  |\n", " _\n| |\n|_|\n"]

      assert DigitalNumbers.compute_value(910) == expected_value
    end

  end

  describe "print/1" do

    test "with a correct value" do
      expected_value = :ok

      assert DigitalNumbers.print(111) == expected_value
    end
    test "with non integer value" do
      assert DigitalNumbers.print(:ok) == "feed me only with positive integer (╯°□°）╯︵ ┻━┻"
    end

    test "with negative value" do
      assert DigitalNumbers.print(-7) == "feed me only with positive integer (╯°□°）╯︵ ┻━┻"
    end
  end

  describe "transform_input_to_digital/1" do

    test "with no valid input" do

      values = [-14, "salut", :je_suis_1_atom, "1", "_$€²¹"]

      for item <- values do
        assert DigitalNumbers.transform_input_to_digital(item) == nil
      end
    end
  end
end
