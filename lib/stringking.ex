defmodule Stringking do
  def is_upper?(string) do
    upper_case_string = String.upcase(string)
    lower_case_string = String.downcase(string)

    upper_case_string == string &&
    upper_case_string != lower_case_string
  end

  def is_lower?(string) do
    upper_case_string = String.upcase(string)
    lower_case_string = String.downcase(string)

    lower_case_string == string &&
    upper_case_string != lower_case_string
  end

  def is_empty?(string) do
    string
    |> String.trim
    |> String.length == 0
  end

  def is_pascal_case?(string) do
    String.match?(string, ~r/^([A-Z]+[a-z0-9]+)+$/)
  end

  def is_camel_case?(string) do
    String.match?(string, ~r/^([a-z]+[a-z0-9]+)([A-Z]+[a-z0-9]+)*$/)
  end

  def is_hyphen_case?(string) do
    String.match?(string, ~r/^[a-z]+(-[a-z]+)*$/)
  end

  def is_snake_case?(string) do
    String.match?(string, ~r/^[a-z]+(_[a-z]+)*$/)
  end

  def is_human_case?(string) do
    String.match?(string, ~r/^[A-Z]([a-z]|[A-Z]|\s)+$/)
  end
end
