defmodule PokemonGameWeb.Schema do
  use Absinthe.Schema

  import_types PokemonGameWeb.Schema.ContentTypes

  alias PokemonGameWeb.Resolvers

  query do
    @desc "Simple test query"
    field :test, :test_type do
      resolve &Resolvers.Test.single_test/3
    end
  end

end
