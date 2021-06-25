defmodule Wabanex.UserTest do
  use Wabanex.DataCase, async: true

  alias Wabanex.User

  describe "changeset/1" do
    test "all params valid, return valid changeset" do
      params = %{name: "G4nd4lf", email: "g4nd4lf@rs.me", password: "b1lb0i54bvrgl4r"}

      response = User.changeset(params)

      assert %Ecto.Changeset{
               valid?: true,
               changes: %{name: "G4nd4lf", email: "g4nd4lf@rs.me", password: "b1lb0i54bvrgl4r"},
               errors: []
             } = response
    end

    test "invalid params, return invalid changeset" do
      params = %{name: "G", email: "g4nd4lf@rs.me"}

      response = User.changeset(params)

      expected_response = %{
        name: ["should be at least 2 character(s)"],
        password: ["can't be blank"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
