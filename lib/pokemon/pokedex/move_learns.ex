defmodule PokemonGame.Pokedex.MoveLearn do
  use Ecto.Schema
  import Ecto.Changeset

  schema "move_learns" do
    field :level_learned_at, :integer
    field :method, :string
    belongs_to :breed, PokemonGame.Pokedex.Breed, foreign_key: :breed_number, references: :number
    belongs_to :move, PokemonGame.Pokedex.Move, foreign_key: :move_number, references: :number

    timestamps()
  end

  @doc false
  def changeset(move_learns, attrs) do
    move_learns
    |> cast(attrs, [:move_number, :method, :level_learned_at, :breed_number])
    |> validate_required([:move_number, :method, :level_learned_at, :breed_number])
  end
end
