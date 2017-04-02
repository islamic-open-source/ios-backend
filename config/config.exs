# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ios,
  ecto_repos: [Ios.Repo]

# Configures the endpoint
config :ios, Ios.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AmsSI63r82ymffnuOEc8qFD8aJ7L3Vc9zdHVRlfYrRCcRNhzikYYUVp+LOTDOD+C",
  render_errors: [view: Ios.ErrorView, accepts: ~w(json)],
  pubsub: [name: Ios.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
