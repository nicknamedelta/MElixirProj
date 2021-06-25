defmodule WabanexWeb.IMCControllerTest do
  use WabanexWeb.ConnCase, async: true

  describe "index/2" do
    test "all params valid, return imc", %{conn: conn} do
      params = %{"filename" => "students.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:ok)

      expected_response = %{
        "result" => %{
          "Allion" => 24.37673130193906,
          "Fogmar" => 23.889462809917354,
          "Laureus" => 27.727478497057493,
          "Ligmar" => 21.874999999999996
        }
      }

      assert response == expected_response
    end

    test "invalid params, return error", %{conn: conn} do
      params = %{"filename" => "purgatory.csv"}

      response =
        conn
        |> get(Routes.imc_path(conn, :index, params))
        |> json_response(:bad_request)

      expected_response = %{"result" => "Error while opening the file"}

      assert response == expected_response
    end
  end
end
