FROM elixir:latest

WORKDIR /app
COPY . /app

RUN mix local.hex --force \
    && mix local.rebar --force \
    && mix setup

EXPOSE 4000

CMD mix phx.server
