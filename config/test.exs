use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :orbita_health, OrbitaHealth.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :orbita_health, OrbitaHealth.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "orbita_health_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
