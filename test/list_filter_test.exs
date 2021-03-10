defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns the number of numeric values" do
      list = ["1", "2", "3", "banana", "4.0", "num sou um numero nao! >:("]

      response = ListFilter.call(list)

      expected_response = 4

      assert expected_response == response
    end
  end
end
