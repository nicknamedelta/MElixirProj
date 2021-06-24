defmodule Wabanex.Trainings.Get do
  alias Ecto.UUID
  alias Wabanex.{Training, Repo}

  def call(id) do
    id
    |> UUID.cast()
    |> handle_response()
  end

  defp handle_response(:error) do
    {:error, "Invalid UUID"}
  end

  defp handle_response({:ok, uuid}) do
    case Repo.get(Training, uuid) do
      nil -> {:error, "Training not found"}
      training -> {:ok, training}
    end
  end
end
