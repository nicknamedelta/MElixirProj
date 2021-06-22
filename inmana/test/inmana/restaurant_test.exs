defmodule Inmana.RestaurantTest do
  use Inmana.DataCase, async: true

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "when all params is valid, returns a valid changeset" do
      params = %{name: "Middle Earth", email: "middle.earth@me.com"}

      response = Restaurant.changeset(params)

      assert %Changeset{
               changes: %{
                 email: "middle.earth@me.com",
                 name: "Middle Earth"
               },
               valid?: true
             } = response
    end

    test "when there are ivalid, returns an invalid changeset" do
      params = %{name: "M", email: ""}

      expected_response = %{
        email: ["can't be blank"],
        name: ["should be at least 2 character(s)"]
      }

      response = Restaurant.changeset(params)

      assert %Changeset{valid?: false} = response

      assert errors_on(response) == expected_response
    end
  end
end
