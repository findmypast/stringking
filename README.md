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
String.between(string, prefix, postfix)

String.cameled(string)
String.slugged(string)
String.humaned(string)
String.snaked(string)

String.is_empty?(string)
String.is_upper?(string)
String.is_lower?(string)

String.to_boolean?(string)
String.collapse_whitespace(string)
String.count_occurences(string, substring)
```
