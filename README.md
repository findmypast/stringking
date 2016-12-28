# Stringking

Stringking provides the standard string functions for elixir that the standard library saw fit to omit.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `stringking` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:stringking, "~> 0.1.0"}]
    end
    ```

  2. Ensure `stringking` is started before your application:

    ```elixir
    def application do
      [applications: [:stringking]]
    end
    ```

## API
```

String.is_empty?(string)
String.is_upper?(string)
String.is_lower?(string)

String.between(string, prefix, postfix)

String.is_pascal_case
String.is_camel_case
String.is_hyphen_case
String.is_snake_case
String.is_human_case

String.pascal_case(string)
String.camel_case(string)
String.hyphen_case(string)
String.snake_case(string)
String.human_case(string)

String.to_boolean?(string)
String.collapse_whitespace(string)
String.count_occurences(string, substring)
```
