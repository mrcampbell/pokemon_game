defmodule PokemonGame.Repo.Migrations.CreateMoves do
  use Ecto.Migration

  def change do
    create table(:moves) do
      add :number, :integer
      add :name, :string

      timestamps()
    end

  end
end
