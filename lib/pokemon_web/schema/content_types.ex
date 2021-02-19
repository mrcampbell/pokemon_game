defmodule PokemonGameWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :test_type do
    field :name, :string
  end
end
