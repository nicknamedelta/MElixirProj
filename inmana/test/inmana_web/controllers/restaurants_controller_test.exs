defmodule InmanaWeb.RestaurantsControllerTest do
  use InmanaWeb.ConnCase, async: true

  describe "create/2" do
    test "when all params are valid, create the restaurant", %{conn: conn} do
      params = %{name: "Middle Earth", email: "middle.earth@me.com"}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:created)

      assert %{
               "message" => "Restaurant created!",
               "restaurant" => %{
                 "email" => "middle.earth@me.com",
                 "id" => _id,
                 "name" => "Middle Earth"
               }
             } = response
    end

    test "when there are invalid params, return an error", %{conn: conn} do
      params = %{email: "middle.earth@me.com"}

      expected_response = %{"message" => %{"name" => ["can't be blank"]}}

      response =
        conn
        |> post(Routes.restaurants_path(conn, :create, params))
        |> json_response(:bad_request)

      assert response == expected_response
    end
  end
end
