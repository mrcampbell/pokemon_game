defmodule PokemonGameWeb.Resolvers.Test do
  def single_test(_parent, _args, _resolution) do
    {:ok, %{name: "yeppers"}}
  end
end
