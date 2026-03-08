defmodule Users do

   import Helpers.Format, only: [{:trim_text, 1}, {:reverse, 1}]

  def new(name, age) do

     formatted_name = trim_text(name)

     %{name: formatted_name, age: age}
  end

  def new, do: generate_default_user()

  def generate_default_user do
     %{name: "John Doe", age: 34}
  end

end
