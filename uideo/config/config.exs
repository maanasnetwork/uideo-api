# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :uideo,
  ecto_repos: [Uideo.Repo]

# Configures the endpoint
config :uideo, UideoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/6C0Kw/MZYxBOAPbQtT5XfRZM0uJ/1DMG5HQSF3dmz72Cb0b7Yj3pyQtIb0eV7hF",
  render_errors: [view: UideoWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Uideo.PubSub,
  live_view: [signing_salt: "lX5bf3Vx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
