defmodule PokemonGameWeb.Resolvers.Pokedex do
  alias PokemonGame.Pokedex

  def breeds(_parent, _args, _resolution) do
    {:ok, Pokedex.list_breeds()}
  end
end
