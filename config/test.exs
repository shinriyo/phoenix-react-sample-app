use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog, Blog.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :blog, Blog.Repo,
  adapter: Sqlite.Ecto,
  database: "db/blog_test.sqlite",
  pool: Ecto.Adapters.SQL.Sandbox
