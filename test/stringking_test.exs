defmodule StringkingTest do
  use ExUnit.Case
  doctest Stringking
  alias Stringking, as: Sut

  test "is_upper works with various test strings" do
    assert Sut.is_upper?("IS UPPER") == true
    assert Sut.is_upper?("is not upper") == false
    assert Sut.is_upper?("1, 2, 3") == false
    assert Sut.is_upper?("Is Not Upper") == false
    assert Sut.is_upper?("плюнуть собаку") == false
    assert Sut.is_upper?("!\"£$%^&*()") == false
  end
end
