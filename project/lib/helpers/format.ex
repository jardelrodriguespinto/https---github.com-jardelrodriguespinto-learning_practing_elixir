defmodule Helpers.Format do
  @moduledoc """
    Documentation for Helpers.Format
  """
  @doc """
    It does trim the spaces in a text
  """
  def trim_text(text) do
    String.trim(text)
  end

  @doc """
    It does reverse a string
  """
  def reverse(text) do
    String.reverse(text)
  end

  def generate_slug(text) do
    #    String.replace(String.trim(String.downcase(text)), " ", "-")

    # text |> String.trim() |> String.downcase() |> String.replace(" ", "-")

    text
    |> String.trim()
    |> String.downcase()
    |> String.replace(" ", "-")
  end
end
