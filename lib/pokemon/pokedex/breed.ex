defmodule PokemonGame.Pokedex.Breed do
  use Ecto.Schema
  import Ecto.Changeset
  alias PokemonGame.Shared.StatGroup

  schema "breeds" do
    field :name, :string
    field :number, :integer

    field :base_hp, :integer
    field :base_atk, :integer
    field :base_def, :integer
    field :base_spec_atk, :integer
    field :base_spec_def, :integer
    field :base_speed, :integer
    embeds_one :base_stats, StatGroup
    # @type stat_group :: %{hp: pos_integer(), atk: pos_integer}
    # field :base_stats, StatGroup

    has_many :move_learns, PokemonGame.Pokedex.MoveLearn, foreign_key: :breed_number, references: :number

    timestamps()
  end

  # def populate_base_stat

  @doc false
  def changeset(breed, attrs) do
    breed
    |> cast(attrs, [:number, :name, :base_stats])
    |> validate_required([:number, :name, :base_stats])
  end
end
