use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :orbita_health, OrbitaHealth.Endpoint,
  http: [port: 4001],
  server: true

config :orbita_health, :sql_sandbox, true

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :orbita_health, OrbitaHealth.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("PGUSER"),
  password: System.get_env("PGPASSWORD"),
  database: "orbita_health_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

config :wallaby, screenshot_on_failure: true

config :wallaby, screenshot_dir: "/tmp/orbita_health/screenshots"

config :wallaby, max_wait_time: 10000
# config :wallaby, phantomjs_args: "--webdriver-logfile=phantomjs.log --local-to-remote-url-access=true --webdriver-loglevel=DEBUG --debug=true"
