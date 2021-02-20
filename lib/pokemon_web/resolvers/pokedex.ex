defmodule PokemonGameWeb.Resolvers.Pokedex do
  alias PokemonGame.Pokedex
  import Ecto.Query, only: [from: 2]


  def breeds(_parent, _args, _resolution) do
    {:ok, Pokedex.list_breeds()}
  end

  def breed(_parent, %{number: number} , _resolution) do
    query = from b in PokemonGame.Pokedex.Breed,
      where: b.number == ^number,
      select: b

      {:ok, PokemonGame.Repo.one!(query)}
  end
end
