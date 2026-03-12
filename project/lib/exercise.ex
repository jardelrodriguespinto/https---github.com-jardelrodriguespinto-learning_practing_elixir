defmodule Exercise do
  def sum_all([]), do: 0

  def sum_all([head | tail]) do
    head + sum_all(tail)
  end

  def count([]), do: 0

  def count([head | tail]) do
    1 + count(tail)
  end

  def count([]), do: 0

  def count([head | tail]) do
    1 + count(tail)
  end

  def double([]), do: 0

  def double([head | tail]) do
    [head * 2 | double(tail)]
  end

  def filter_even([]), do: []

  def filter_even([head | tail]) when rem(head, 2) == 0 do
    [head | filter_even(tail)]
  end

  def filter_even([_ | tail]) do
    filter_even(tail)
  end

  def classify(number) do
    cond do
      number > 0 -> :positive
      number < 0 -> :negative
      number == 0 -> :zero
    end
  end

  def sum_all_even([]), do: 0

  def sum_all_even([head | tail]) when rem(head, 2) == 0 do
    head + sum_all_even(tail)
  end

  def sum_all_even([_ | tail]) do
    sum_all_even(tail)
  end

  def first([]), do: nil
  def first([head | _tail]), do: head

  def eh_par(number) do
    rem(number, 2) == 0
  end

  def saudacao(nome) do
    " Olá, #{nome}"
  end

  def primeiro([]), do: nil
  def primeiro([head | _tail]), do: head

  def ultimo([head | tail]) do
    cond do
      tail == [] -> head
      true -> ultimo(tail)
    end
  end

  def reverter([]), do: []

  def reverter([head | tail]) do
    reverter(tail) ++ [head]
  end

  def contar_pares([], result), do: result

  def contar_pares([head | tail], result) do
    cond do
      rem(head, 2) == 0 -> contar_pares(tail, result + 1)
      true -> contar_pares(tail, result)
    end
  end

  def multiplicar([]), do: 1

  def multiplicar([head | tail]) do
    head * multiplicar(tail)
  end

  def multiplicar([head | tail]) do
    head * multiplicar(tail)
  end

  def maior([], result), do: result

  def maior([head | tail], result) do
    IO.puts(result)
    cond do
      head >= result -> maior(tail, head)
      true -> maior(tail, result)
    end
  end

   def buscar([], result), do: result

  def maior([head | tail], result) do
    IO.puts(result)
    cond do
      head >= result -> maior(tail, head)
      true -> maior(tail, result)
    end
  end

  def somar_negativos([], result), do: result

  def somar_negativos([head | tail], result) do
    cond do
      head < 0 ->
         somar_negativos(tail, head + result)

      true ->
         head + somar_negativos(tail, result)

    end
  end

  def somar_negativos([head | tail], result) do
    cond do
      head < 0 ->
         somar_negativos(tail, head + result)

      true ->
         head + somar_negativos(tail, result)

    end
  end

  def contar_impares([], result), do: result

  def contar_impares([head | tail], result) do

    cond do
      rem(head, 2) != 0 ->
         contar_impares(tail, result + 1)

      true ->
        contar_impares(tail, result)

    end
  end

end
