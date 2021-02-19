defmodule PokemonGame.Pokedex.MoveLearns do
  use Ecto.Schema
  import Ecto.Changeset

  schema "move_learns" do
    field :level_learned_at, :integer
    field :method, :string
    field :move_number, :integer

    timestamps()
  end

  @doc false
  def changeset(move_learns, attrs) do
    move_learns
    |> cast(attrs, [:move_number, :method, :level_learned_at])
    |> validate_required([:move_number, :method, :level_learned_at])
  end
end
