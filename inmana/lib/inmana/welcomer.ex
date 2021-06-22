defmodule Inmana.Welcomer do
  # receive (name, age), if name=="banana" && age==42 return a especial message
  # if age >= 18 return a normal message && age < 18 return an error
  # deal with problematic strings in the name ("BaNaNa","Banana   \n")

  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    # pipe operator |>
    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  # pattern matching
  defp evaluate("banana", 42) do
    {:ok, "You are especial"}
  end

  # pattern matching with value verification
  defp evaluate(name, age) when age >= 18 do
    {:ok, "Welcome #{name}"}
  end

  # _ ignore var
  defp evaluate(name, _age) do
    # tuple (status, return)
    {:error, "You shall not pass #{name}"}
  end
end
