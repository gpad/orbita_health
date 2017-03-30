# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :orbita_health,
  ecto_repos: [OrbitaHealth.Repo]

# Configures the endpoint
config :orbita_health, OrbitaHealth.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "sBhkGQhAiu6X591Od2b2eB/DuzWXM/IbMfl/lI44aNYjtIoFywa9CcRWpT1uqnV3",
  render_errors: [view: OrbitaHealth.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OrbitaHealth.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
