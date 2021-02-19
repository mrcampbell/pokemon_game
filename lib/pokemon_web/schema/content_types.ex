defmodule PokemonGameWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :test_type do
    field :name, :string
  end

  object :breed do
    field :number, :integer
    field :name, :string
  end

  object :move do
    field :number, :integer
    field :name, :string
  end
end
