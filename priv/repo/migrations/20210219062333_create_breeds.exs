defmodule PokemonGame.Repo.Migrations.CreateBreeds do
  use Ecto.Migration

  def change do
    create table(:breeds) do
      add :number, :integer
      add :name, :string
      add :base_stats, :map

      timestamps()
    end

  end
end
