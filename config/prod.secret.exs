use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :graphql_elixir, GraphqlElixirWeb.Endpoint,
  secret_key_base: "WnZqdiTN9g/aFhQgoeBbuAoWzNsECSSXZTfrTPSTOfK9MjI1R2UzsUGxaRisZ5/1"

# Configure your database
config :graphql_elixir, GraphqlElixir.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DB_USER") || "${DB_USER}",
  password: System.get_env("DB_PASSWORD") || "${DB_PASSWORD}",
  database: "graphql_elixir",
  hostname: System.get_env("DB_HOST") || "${DB_HOST}",
  pool_size: 15
