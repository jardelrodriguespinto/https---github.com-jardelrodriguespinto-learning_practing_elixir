defmodule Users do
  # import Helpers.Format, only: [{:trim_text, 1}, {:reverse, 1}]
  # using alias
  alias Helpers.Format, as: WhatEverNameYouWant

  #using traditional if and else
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
     %{name: "Jardel", age: age, is_cool: true}
  end

  def new(name, age) do
    formatted_name = WhatEverNameYouWant.trim_text(name)

    %{name: formatted_name, age: age, is_cool: false}
  end

  def new, do: generate_default_user()

  def generate_default_user do
    %{name: "John Doe", age: 34}
  end
end
