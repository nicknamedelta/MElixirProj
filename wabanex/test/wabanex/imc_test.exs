defmodule Wabanex.IMCTest do
  use ExUnit.Case, async: true

  alias Wabanex.IMC

  describe "calculate/1" do
    test "if file exists, return data" do
      params = %{"filename" => "students.csv"}

      response = IMC.calculate(params)

      expected_response =
        {:ok,
         %{
           "Allion" => 24.37673130193906,
           "Fogmar" => 23.889462809917354,
           "Laureus" => 27.727478497057493,
           "Ligmar" => 21.874999999999996
         }}

      assert response == expected_response
    end

    test "wrong filename, return error" do
      params = %{"filename" => "purgatory.csv"}

      response = IMC.calculate(params)

      expected_response = {:error, "Error while opening the file"}

      assert response == expected_response
    end
  end
end
