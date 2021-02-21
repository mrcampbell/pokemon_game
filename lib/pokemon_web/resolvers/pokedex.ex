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

      case PokemonGame.Repo.one(query) do
        nil -> {:error, "not found"}
        breed -> {:ok, breed}
      end
  end

  def breed_move_learns(%PokemonGame.Pokedex.Breed{} = breed, _args, _resolution) do
    mls = Ecto.assoc(breed, [:move_learns])
    |> PokemonGame.Repo.all()

    IO.inspect mls

    {:ok, mls}
  end

  def move_learn_move(%PokemonGame.Pokedex.MoveLearn{} = move_learn, _args, _resolution) do
    move = Ecto.assoc(move_learn, [:move])
    |> PokemonGame.Repo.one()

    IO.inspect move

    {:ok, move}
  end
end
