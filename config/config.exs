# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :prep_blog,
  ecto_repos: [PrepBlog.Repo]

# Configures the endpoint
config :prep_blog, PrepBlog.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "bjfCtssk8mBwd8tnA9yQWS20EtJv/r+XWwcTqOXJ7opJaozdc0ekXP2R8J3xPg9k",
  render_errors: [view: PrepBlog.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PrepBlog.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
