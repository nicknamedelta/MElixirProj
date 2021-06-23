# Wabanex - nlw6Te

(⌒ ▽ ⌒) - "**Wa**ter + **Ban**ana + **E**li**X**ir = WaBanEx"

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

## Environment settings

[Notion - Configurações do Ambiente](https://www.notion.so/Mission-Elixir-e2036a66a5784f0e94e564c6dd19fc10)

## Ecto

Generate new migration: `mix ecto.gen.migration <method>_<table_name>_table`

Execute migrations: `mix ecto.migrate`

Reset and re-run migrations: `mix ecto.reset`

## GraphQl

Localhost access: [http://localhost:4000/api/graphiql/](http://localhost:4000/api/graphiql/)

**Creating a new user in GraphiQl:**

```elixir
mutation {
  createUser(input: {
    name: "<user_name>",
    email: "user_email_w_@",
    password: "<user_password>"
  })
  {
    id, 
    name
  }
}
```

**Get an user by id in GraphiQl:**

```elixir
{
  getUser(id: "<user_uuid4>"),
  {
    name,
    email
  }
}
```
