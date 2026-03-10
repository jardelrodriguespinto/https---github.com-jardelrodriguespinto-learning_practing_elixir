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


end
