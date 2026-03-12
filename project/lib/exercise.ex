defmodule Exercise do
    def contar([]), do: 0

    def contar([head | tail]) do
      1 + contar(tail)
    end


    def somar([], acc), do: acc

    def somar([head | tail], acc) do
       somar(tail, acc + head)
    end

    def dobrar_lista([]), do: []

    def dobrar_lista([head | tail]) do
      [head *  2 | dobrar_lista(tail)]
    end

    def filtrar_pares([]), do: []

    def filtrar_pares([head | tail]) do
      cond do
        rem(head, 2) != 0 -> filtrar_pares(tail)
        true -> [head | filtrar_pares(tail)]
      end
    end


end
