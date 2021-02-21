defmodule PokemonGameWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  alias PokemonGameWeb.Resolvers

  object :test_type do
    field :name, :string
  end

  object :move do
    field :number, :integer
    field :name, :string
  end

  object :move_learns do
    field :move_number, :integer
    field :method, :string
    field :level_learned_at, :integer
    field :move, :move do
      resolve &Resolvers.Pokedex.move_learn_move/3
    end
  end

  object :breed do
    field :number, :integer
    field :name, :string
    field :moves_learned, list_of(:move_learns) do
      resolve &Resolvers.Pokedex.breed_move_learns/3
    end
  end
end
