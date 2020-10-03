# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :socket_server,
  ecto_repos: [SocketServer.Repo]

# Configures the endpoint
config :socket_server, SocketServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aBx1tF7Gc9O9wP49y/XiKC3h3QCt/F59R5wwOVil+v2ZfpGesBUqIVT8zVjaoCi+",
  render_errors: [view: SocketServerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: SocketServer.PubSub,
  live_view: [signing_salt: "sSQGLmsx"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
