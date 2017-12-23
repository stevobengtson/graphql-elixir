FROM elixir:1.5-alpine

RUN mix local.hex --force && \
 mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez && \
 mix local.rebar --force

EXPOSE 4000

WORKDIR /app
