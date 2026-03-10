defmodule Games do
  def get do
    %{name: "Diablo IV", in_stock: true, price: 10}
  end

  def get_all do
    [
      %{name: "Diablo IV", in_stock: true, price: 10},
      %{name: "Hitman", in_stock: false, price: 40},
      %{name: "Cyberpunk 2077", in_stock: false, price: 30},
      %{name: "Final Fantasy VII", in_stock: true, price: 60},
      %{name: "God Of War", in_stock: true, price: 70}
    ]
  end

  def games_not_in_stock do
    Enum.filter(get_all(), &(&1.in_stock && &1.price <= 50))
  end

  def games_not_in_stock do
    Enum.filter(get_all(), &filter/1)
  end

  defp filter(game) do
    game.in_stock && game.price <= 50
  end

  def count([]), do: 0

  def count([head | tail]) do
    1 + count(tail)
  end

  def sum_price([]), do: 0

  def sum_price([head | tail]) do
    head.price + sum_price(tail)
  end

  def purcharse(game) do
    case validate_purcharse(game) do
      {:error, reason} -> "Error: #{reason}"
      {:ok, _} -> "Successful Purcharse"
    end
  end

  defp validate_purcharse(game) do
    cond do
      !game.in_stock -> {:error, "Game not available for purchase"}
      game.price > 50 -> {:error, "Too expensive ! Can't buy"}
      true -> {:ok, "Proceed with the purchase!"}
    end
  end
end
