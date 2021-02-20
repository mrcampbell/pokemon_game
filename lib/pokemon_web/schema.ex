defmodule PokemonGameWeb.Schema do
  use Absinthe.Schema

  import_types PokemonGameWeb.Schema.ContentTypes

  alias PokemonGameWeb.Resolvers

  query do
    @desc "Simple test query"
    field :test, :test_type do
      resolve &Resolvers.Test.single_test/3
    end

    @desc "List breeds"
    field :breeds, list_of(:breed) do
      resolve &Resolvers.Pokedex.breeds/3
    end

    @desc "Single breed"
    field :breed, :breed do
      arg :number, non_null(:integer)
      resolve &Resolvers.Pokedex.breed/3
    end
  end

end
