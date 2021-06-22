defmodule Inmana.WelcomerTest do
  use ExUnit.Case, async: true

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is especial, returns a especial message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "You are especial"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is not especial, returns a message" do
      params = %{"name" => "Bilbo", "age" => "111"}
      expected_result = {:ok, "Welcome bilbo"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is under age, returns an error" do
      params = %{"name" => "Bilbo", "age" => "16"}
      expected_result = {:error, "You shall not pass bilbo"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end
  end
end
