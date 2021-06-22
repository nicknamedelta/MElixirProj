defmodule PhxGen.Repo do
  use Ecto.Repo,
    otp_app: :phx_gen,
    adapter: Ecto.Adapters.Postgres
end
