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

  test "is_pascal_case works with various test strings" do
    assert Sut.is_pascal_case?("HelloWorld") == true
    assert Sut.is_pascal_case?("Hello World") == false
    assert Sut.is_pascal_case?("helloWorld") == false
    assert Sut.is_pascal_case?("hello-world") == false
    assert Sut.is_pascal_case?("hello_world") == false
  end

  test "is_camel_case works with various test strings" do
    assert Sut.is_camel_case?("HelloWorld") == false
    assert Sut.is_camel_case?("Hello World") == false
    assert Sut.is_camel_case?("helloWorld") == true
    assert Sut.is_camel_case?("hello-world") == false
    assert Sut.is_camel_case?("hello_world") == false
  end

  test "is_hyphen_case works with various test strings" do
    assert Sut.is_hyphen_case?("HelloWorld") == false
    assert Sut.is_hyphen_case?("Hello World") == false
    assert Sut.is_hyphen_case?("helloWorld") == false
    assert Sut.is_hyphen_case?("hello-world") == true
    assert Sut.is_hyphen_case?("hello_world") == false
  end

  test "is_snake_case works with various test strings" do
    assert Sut.is_snake_case?("HelloWorld") == false
    assert Sut.is_snake_case?("Hello World") == false
    assert Sut.is_snake_case?("helloWorld") == false
    assert Sut.is_snake_case?("hello-world") == false
    assert Sut.is_snake_case?("hello_world") == true
  end

  test "is_human_case works with various test strings" do
    assert Sut.is_human_case?("HelloWorld") == true
    assert Sut.is_human_case?("Hello World") == true
    assert Sut.is_human_case?("helloWorld") == false
    assert Sut.is_human_case?("hello-world") == false
    assert Sut.is_human_case?("hello_world") == false
  end
end
