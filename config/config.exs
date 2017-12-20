# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :graphql_elixir,
  ecto_repos: [GraphqlElixir.Repo]

# Configures the endpoint
config :graphql_elixir, GraphqlElixirWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "iYRnZMFEVNEndus4LGAIqCrYFa3+tYmvlD12w6t0mGUl8VkLDFCuHEyR3Vp1wgcP",
  render_errors: [view: GraphqlElixirWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: GraphqlElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
