# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phx_gen,
  ecto_repos: [PhxGen.Repo]

# Configures the endpoint
config :phx_gen, PhxGenWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ani8vaCTtkbX+yGkPE9egj2D/HoAHfU9TgIN9NJG6lVGMSNmffjAUJatN5DlWYVL",
  render_errors: [view: PhxGenWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhxGen.PubSub,
  live_view: [signing_salt: "RozT0+b5"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
