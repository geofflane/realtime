use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :bd_rt, BdRt.Endpoint,
  http: [port: 4000],
  debug_errors: true,
  code_reloader: true,
  cache_static_lookup: false,
  check_origin: false,
  watchers: []

# Watch static and templates for browser reloading.
config :bd_rt, BdRt.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{web/views/.*(ex)$},
      ~r{web/templates/.*(eex)$}
    ]
  ]

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development.
# Do not configure such in production as keeping
# and calculating stacktraces is usually expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :bd_rt, BdRt.Repo,
  adapter: Ecto.Adapters.Postgres,
  database: "bus_detective_development",
  hostname: "localhost",
  pool_size: 10

# You need to set your username and password in a local config
# This is compile time, so dotenv won't work. Basically I don't
# know how to make this optional or have reasonable defaults
import_config "local.exs"
