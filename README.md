# GraphqlElixir


## Local

To start your Phoenix server:

  * Install Elixir/Phoenix
  * Install Postgresql
  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

## Via Docker

  * Add `127.0.0.1 graphql.elixir.localhost` to /etc/hosts
  * docker-compose up -d db
  * docker-compose build web
  * docker-compose run --rm web mix deps.get
  * docker-compose run --rm web mix ecto.setup
  * docker-compose up

Now you can visit [`http://graphql.elixir.localhost`](http://graphql.elixir.localhost) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
