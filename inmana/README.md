# Inmana - nlw5Te

⊂( ´ ▽ ` )⊃ - "Inmana - loss prevention with intelligent due date management"

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## What was used ?

[Credo - LTS version](https://github.com/rrrene/credo)

[Bamboo - LTS version](https://github.com/thoughtbot/bamboo)

[Whimsical - Mental Maps](https://whimsical.com/)

[ExCoverAll - Test Coverage](https://github.com/parroty/excoveralls)

[Ex_Machina - Test Params Factory](https://github.com/thoughtbot/ex_machina)

## Environment settings

[Notion - Configurações do Ambiente](https://www.notion.so/Configura-es-do-ambiente-9d73d4eefa7043f593d9c768922306ca)

[Erlang Build - prerequisites](https://blog.differentpla.net/blog/2019/01/30/erlang-build-prerequisites/)

[Error - dpkg returned an error code 1](https://itsfoss.com/dpkg-returned-an-error-code-1)

## Docker Containers

Start new docker container with PostgreSql: `sudo docker run --name postgres -e POSTGRES_PASSWORD=postgres -p 5432:5432 -d postgres`
    
    - username: postgres
    - password: postgres

Start a docker container: `sudo docker start container_name`

Stop a docker container: `sudo docker stop container_id`

List all docker containers (stopped/running): `sudo docker ps -a`

Remove a docker container: `sudo docker container rm container_name`

## Phoenix

Start new project using Phoenix: `mix phx.new application_name --no-html --no-webpack`

We are almost there! The following steps are missing: `cd application_name`

Then configure your database in config/dev.exs and run: `mix ecto.create`

Start your Phoenix app with: `mix phx.server`

Get new dependencies: `mix deps.get`

Show all routes in application: `mix phx.routes`

Format all project's code: `mix format`

### Tests

Test your application: `mix test`

Test your application using ExCoverAll: `mix coveralls`

Test your application using ExCoverAll(html): `mix coveralls.html`

Get the percentage of test coverage in your app: `mix test --cover`

### Ecto

Create new migration: `mix ecto.gen.migration create_name_table` and `mix ecto.migrate`

Generate a new Credo config: `mix credo.gen.config`

Execute migrations isn't are created: `mix ecto.migrate`

## IEx (Interactive Elixir)

Interactive Elixir: `iex`

Use IEX in your project: `iex -S mix`

You can also run your app inside IEx (Interactive Elixir) as: `iex -S mix phx.server`

Show functions docs: `h Module.function`

## Bamboo

View bamboo sented emails in: http://localhost:4000/sent_emails
