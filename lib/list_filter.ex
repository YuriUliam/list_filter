defmodule ListFilter do
  def call(list), do: list_filter(list)

  defp list_filter(list) do
    list
    |> Enum.filter(fn elem -> Integer.parse(elem) != :error end)
    |> length()
  end
end
