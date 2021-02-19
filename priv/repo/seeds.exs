# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     PokemonGame.Repo.insert!(%PokemonGame.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias PokemonGame.Pokedex.{MoveLearn, Move, Breed}
alias PokemonGame.Repo

Repo.delete_all(MoveLearn)
Repo.delete_all(Breed)
Repo.delete_all(Move)

bulbasaur = Repo.insert!(%Breed{
  name: "bulbasaur",
  number: 1,
})
pound = Repo.insert!(%Move{
  name: "pound",
  number: 7
})

bulbasaur_pound = Ecto.build_assoc(bulbasaur, :move_learns, %MoveLearn{move_number: 7, level_learned_at: 0, method: "egg"})
Repo.insert!(bulbasaur_pound)
