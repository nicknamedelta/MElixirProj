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

## GraphQl/GraphiQl

Localhost access: [http://localhost:4000/api/graphiql/](http://localhost:4000/api/graphiql/)

**Create a new user in GraphiQl:**

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
  getUser(id: "<user_uuid4>")
  {
    name,
    email
  }
}
```

**Create a training and his list of exercises in GraphiQl:**

```elixir
mutation {
  createTraining(input: {
    startDate: "<YYYY-MM-DD>",
    endDate: "<YYYY-MM-DD>",
    userId: "<user_uuid4>",
    exercises: [
      {
        name: "<exercise_name>",
        youtubeVideoUrl: "<youtube_video_url>",
        repetitions: "<repetitions_description>",
        protocolDescription: "<protocol_description>"
      },
      {
        name: "<exercise2_name>",
        youtubeVideoUrl: "<youtube_video_url>",
        repetitions: "<repetitions_description>",
        protocolDescription: "<protocol_description>"
      }
    ]
  })
  {
    id,
    exercises{
      id,
      name,
      repetitions,
      protocolDescription
    }
  }
}
```

**Get an training without exercises list by id in GraphiQl:**

```elixir
{
  getTraining(id: "<training_uuid4>")
  {
    id,
    startDate,
    endDate,
  }
}
```

**Get an user and his actual training with exercises list by id in GraphiQl:**

```elixir
{
  getUser(id: "<user_uuid4>")
  {
    id,
    name,
    email,
    trainings{
      id,
      startDate,
      endDate,
      exercises{
        name,
        repetitions
      }
    }
  }
}
```
