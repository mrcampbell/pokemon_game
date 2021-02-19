defmodule PokemonGame.Repo.Migrations.CreateMoveLearns do
  use Ecto.Migration

  def change do
    create table(:move_learns) do
      add :move_number, :integer
      add :method, :string
      add :level_learned_at, :integer
      add :breed_id, references(:breeds)

      timestamps()
    end

  end
end
