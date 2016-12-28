defmodule Stringking do
  def is_upper?(string) do
    upper_case_string = String.upcase(string)
    lower_case_string = String.downcase(string)

    upper_case_string == string &&
    upper_case_string != lower_case_string
  end
end
