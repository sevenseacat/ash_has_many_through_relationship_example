import Config

config :example, Example.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "example_dev",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
