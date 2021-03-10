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
  base_stats: %{
    hp: 1,
    atk: 2,
    # def: 3,
    # spec_atk: 4,
    # spec_def: 5,
    # speed: 6
  }
})

charmander = Repo.insert!(%Breed{
  name: "charmander",
  number: 4,
})

pound = Repo.insert!(%Move{
  name: "pound",
  number: 7
})

scratch = Repo.insert!(%Move{
  name: "scratch",
  number: 3
})

Repo.insert!(%MoveLearn{move_number: 7, breed_number: 1, level_learned_at: 0, method: "egg"})
Repo.insert!(%MoveLearn{move_number: 3, breed_number: 4, level_learned_at: 0, method: "egg"})



# bulbasaur_pound = Ecto.build_assoc(bulbasaur, :move_learns, %MoveLearn{move_number: 7, level_learned_at: 0, method: "egg"})
# Repo.insert!(bulbasaur_pound)

# charmander_scratch = Ecto.build_assoc(charmander, :move_learns, %MoveLearn{move_number: 3, level_learned_at: 0, method: "egg"})
# Repo.insert!(charmander_scratch)
