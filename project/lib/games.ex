defmodule Games do
  def get do
    %{name: "Diablo IV", in_stock: true, price: 10}
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
