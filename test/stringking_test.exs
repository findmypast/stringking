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
    assert Sut.is_upper?("    ") == false
    assert Sut.is_upper?("") == false
  end

  test "is_lower works with various test strings" do
    assert Sut.is_lower?("IS UPPER") == false
    assert Sut.is_lower?("is not upper") == true
    assert Sut.is_lower?("1, 2, 3") == false
    assert Sut.is_lower?("Is Not Upper") == false
    assert Sut.is_lower?("плюнуть собаку") == true
    assert Sut.is_lower?("!\"£$%^&*()") == false
    assert Sut.is_lower?("    ") == false
    assert Sut.is_lower?("") == false
  end

  test "is_empty works with various test strings" do
    assert Sut.is_empty?("IS NOT BLANK") == false
    assert Sut.is_empty?("1, 2, 3") == false
    assert Sut.is_empty?("    ") == true
    assert Sut.is_empty?("") == true
  end
end
