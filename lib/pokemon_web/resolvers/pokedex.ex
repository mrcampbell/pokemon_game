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

      out = PokemonGame.Repo.one!(query)

      IO.inspect(out)
      {:ok, out}
  end

  def breed_move_learns(%PokemonGame.Pokedex.Breed{} = breed, _args, _resolution) do
    mls = Ecto.assoc(breed, :move_learns)
    |> PokemonGame.Repo.all()

    {:ok, mls}
  end

  def move(%PokemonGame.Pokedex.Breed{} = breed, _args, _resolution) do
    query = from ml in PokemonGame.Pokedex.MoveLearn,
      where: ml.breed_id == ^breed.id,
      select: ml

      out = PokemonGame.Repo.all(query)

      IO.inspect(out)
      {:ok, out}
  end
end
