defmodule Users do
  # import Helpers.Format, only: [{:trim_text, 1}, {:reverse, 1}]
  # using alias
  alias Helpers.Format, as: WhatEverNameYouWant

  # using traditional if and else
  # def new(name, age) do
  #   formatted_name = WhatEverNameYouWant.trim_text(name)

  #   if name == "Jardel" do
  #     %{name: formatted_name, age: age, is_cool: true}
  #   else
  #     %{name: formatted_name, age: age, is_cool: false}
  #   end
  # end

  # using pattern matching
  def new("Jardel", age) do
    %{name: "Jardel", age: age, is_cool: true, can_drink: true}
  end

  # def is_number_age(age) do
  #   #String.to_integer(age)
  # end

  # def new(name, age) when is_number_age(age) and age >= 18 do
  #   formatted_name = WhatEverNameYouWant.trim_text(name)

  #   %{name: formatted_name, age: age, is_cool: false, can_drink: true}
  # end

  def new(name, age) do
    formatted_name = WhatEverNameYouWant.trim_text(name)

    %{name: formatted_name, age: age, is_cool: false, can_drink: false}
  end

  def new, do: generate_default_user()

  def generate_default_user do
    %{name: "John Doe", age: 34, is_cool: false, can_drink: false}
  end
end
