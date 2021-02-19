defmodule PokemonGame.Pokedex.Breed do
  use Ecto.Schema
  import Ecto.Changeset

  schema "breeds" do
    field :name, :string
    field :number, :string

    timestamps()
  end

  @doc false
  def changeset(breed, attrs) do
    breed
    |> cast(attrs, [:number, :name])
    |> validate_required([:number, :name])
  end
end
