use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :graphql_elixir, GraphqlElixirWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :graphql_elixir, GraphqlElixir.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("DB_USER"),
  password: System.get_env("DB_PASSWORD"),
  database: "graphql_elixir_test",
  hostname: System.get_env("DB_HOST"),  
  pool: Ecto.Adapters.SQL.Sandbox
