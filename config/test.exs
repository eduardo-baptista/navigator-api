use Mix.Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :navigator, Navigator.Repo,
  username: "postgres",
  password: "postgres",
  database: "navigator_test#{System.get_env("MIX_TEST_PARTITION")}",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :navigator, NavigatorWeb.Endpoint,
  http: [port: 4002],
  server: false

# Configures max dimensions to move the probes
config :navigator, :max_dimensions,
  x: 4,
  y: 4

# Print only warnings and errors during test
config :logger, level: :warn
