# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :pokemon,
  namespace: PokemonGame,
  ecto_repos: [PokemonGame.Repo]

# Configures the endpoint
config :pokemon, PokemonGameWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1G69qK/nNpvetLSarkUvzvV3+VFxQFd9ZYOsL0m9I21vlZnvmA1RQpsgj095Jsai",
  render_errors: [view: PokemonGameWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: PokemonGame.PubSub,
  live_view: [signing_salt: "TbvTC0Ls"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
