defmodule PokemonGame.Pokedex.Move do
  use Ecto.Schema
  import Ecto.Changeset

  schema "moves" do
    field :name, :string
    field :number, :integer

    timestamps()
  end

  @doc false
  def changeset(move, attrs) do
    move
    |> cast(attrs, [:number, :name])
    |> validate_required([:number, :name])
  end
end
