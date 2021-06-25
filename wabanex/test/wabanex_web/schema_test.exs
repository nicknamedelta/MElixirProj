defmodule WabanexWeb.SchemaTest do
  use WabanexWeb.ConnCase, async: true

  alias Wabanex.User
  alias Wabanex.Users.Create

  describe "users queries" do
    test "valid user id, return user", %{conn: conn} do
      params = %{name: "G4nd4lf", email: "g4nd4lf@rs.me", password: "b1lb0i54bvrgl4r"}

      {:ok, %User{id: user_id}} = Create.call(params)

      query = """
        {
          getUser(id: "#{user_id}"){
            name,
            email
          }
        }
      """

      response =
        conn
        |> post("/api/graphql", %{query: query})
        |> json_response(:ok)

      expected_response = %{
        "data" => %{
          "getUser" => %{
            "email" => "g4nd4lf@rs.me",
            "name" => "G4nd4lf"
          }
        }
      }

      assert response == expected_response
    end
  end

  describe "users mutation" do
    test "all params valid, create user", %{conn: conn} do
      mutation = """
      mutation {
        createUser(input: {
          name: "G4nd4lf",
          email: "g4nd4lf@rs.me",
          password: "b1lb0i54bvrgl4r"
        })
        {
          id,
          name
        }
      }
      """

      response =
        conn
        |> post("/api/graphql", %{query: mutation})
        |> json_response(:ok)

      assert %{"data" => %{"createUser" => %{"id" => _id, "name" => "G4nd4lf"}}} = response
    end
  end
end
