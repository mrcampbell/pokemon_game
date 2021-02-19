defmodule PokemonGame.PokedexTest do
  use PokemonGame.DataCase

  alias PokemonGame.Pokedex

  describe "breeds" do
    alias PokemonGame.Pokedex.Breed

    @valid_attrs %{name: "some name", number: "some number"}
    @update_attrs %{name: "some updated name", number: "some updated number"}
    @invalid_attrs %{name: nil, number: nil}

    def breed_fixture(attrs \\ %{}) do
      {:ok, breed} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokedex.create_breed()

      breed
    end

    test "list_breeds/0 returns all breeds" do
      breed = breed_fixture()
      assert Pokedex.list_breeds() == [breed]
    end

    test "get_breed!/1 returns the breed with given id" do
      breed = breed_fixture()
      assert Pokedex.get_breed!(breed.id) == breed
    end

    test "create_breed/1 with valid data creates a breed" do
      assert {:ok, %Breed{} = breed} = Pokedex.create_breed(@valid_attrs)
      assert breed.name == "some name"
      assert breed.number == "some number"
    end

    test "create_breed/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokedex.create_breed(@invalid_attrs)
    end

    test "update_breed/2 with valid data updates the breed" do
      breed = breed_fixture()
      assert {:ok, %Breed{} = breed} = Pokedex.update_breed(breed, @update_attrs)
      assert breed.name == "some updated name"
      assert breed.number == "some updated number"
    end

    test "update_breed/2 with invalid data returns error changeset" do
      breed = breed_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokedex.update_breed(breed, @invalid_attrs)
      assert breed == Pokedex.get_breed!(breed.id)
    end

    test "delete_breed/1 deletes the breed" do
      breed = breed_fixture()
      assert {:ok, %Breed{}} = Pokedex.delete_breed(breed)
      assert_raise Ecto.NoResultsError, fn -> Pokedex.get_breed!(breed.id) end
    end

    test "change_breed/1 returns a breed changeset" do
      breed = breed_fixture()
      assert %Ecto.Changeset{} = Pokedex.change_breed(breed)
    end
  end

  describe "moves" do
    alias PokemonGame.Pokedex.Move

    @valid_attrs %{name: "some name", number: "some number"}
    @update_attrs %{name: "some updated name", number: "some updated number"}
    @invalid_attrs %{name: nil, number: nil}

    def move_fixture(attrs \\ %{}) do
      {:ok, move} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokedex.create_move()

      move
    end

    test "list_moves/0 returns all moves" do
      move = move_fixture()
      assert Pokedex.list_moves() == [move]
    end

    test "get_move!/1 returns the move with given id" do
      move = move_fixture()
      assert Pokedex.get_move!(move.id) == move
    end

    test "create_move/1 with valid data creates a move" do
      assert {:ok, %Move{} = move} = Pokedex.create_move(@valid_attrs)
      assert move.name == "some name"
      assert move.number == "some number"
    end

    test "create_move/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokedex.create_move(@invalid_attrs)
    end

    test "update_move/2 with valid data updates the move" do
      move = move_fixture()
      assert {:ok, %Move{} = move} = Pokedex.update_move(move, @update_attrs)
      assert move.name == "some updated name"
      assert move.number == "some updated number"
    end

    test "update_move/2 with invalid data returns error changeset" do
      move = move_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokedex.update_move(move, @invalid_attrs)
      assert move == Pokedex.get_move!(move.id)
    end

    test "delete_move/1 deletes the move" do
      move = move_fixture()
      assert {:ok, %Move{}} = Pokedex.delete_move(move)
      assert_raise Ecto.NoResultsError, fn -> Pokedex.get_move!(move.id) end
    end

    test "change_move/1 returns a move changeset" do
      move = move_fixture()
      assert %Ecto.Changeset{} = Pokedex.change_move(move)
    end
  end

  describe "move_learns" do
    alias PokemonGame.Pokedex.MoveLearns

    @valid_attrs %{level_learned_at: 42, method: "some method", move_number: 42}
    @update_attrs %{level_learned_at: 43, method: "some updated method", move_number: 43}
    @invalid_attrs %{level_learned_at: nil, method: nil, move_number: nil}

    def move_learns_fixture(attrs \\ %{}) do
      {:ok, move_learns} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Pokedex.create_move_learns()

      move_learns
    end

    test "list_move_learns/0 returns all move_learns" do
      move_learns = move_learns_fixture()
      assert Pokedex.list_move_learns() == [move_learns]
    end

    test "get_move_learns!/1 returns the move_learns with given id" do
      move_learns = move_learns_fixture()
      assert Pokedex.get_move_learns!(move_learns.id) == move_learns
    end

    test "create_move_learns/1 with valid data creates a move_learns" do
      assert {:ok, %MoveLearns{} = move_learns} = Pokedex.create_move_learns(@valid_attrs)
      assert move_learns.level_learned_at == 42
      assert move_learns.method == "some method"
      assert move_learns.move_number == 42
    end

    test "create_move_learns/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Pokedex.create_move_learns(@invalid_attrs)
    end

    test "update_move_learns/2 with valid data updates the move_learns" do
      move_learns = move_learns_fixture()
      assert {:ok, %MoveLearns{} = move_learns} = Pokedex.update_move_learns(move_learns, @update_attrs)
      assert move_learns.level_learned_at == 43
      assert move_learns.method == "some updated method"
      assert move_learns.move_number == 43
    end

    test "update_move_learns/2 with invalid data returns error changeset" do
      move_learns = move_learns_fixture()
      assert {:error, %Ecto.Changeset{}} = Pokedex.update_move_learns(move_learns, @invalid_attrs)
      assert move_learns == Pokedex.get_move_learns!(move_learns.id)
    end

    test "delete_move_learns/1 deletes the move_learns" do
      move_learns = move_learns_fixture()
      assert {:ok, %MoveLearns{}} = Pokedex.delete_move_learns(move_learns)
      assert_raise Ecto.NoResultsError, fn -> Pokedex.get_move_learns!(move_learns.id) end
    end

    test "change_move_learns/1 returns a move_learns changeset" do
      move_learns = move_learns_fixture()
      assert %Ecto.Changeset{} = Pokedex.change_move_learns(move_learns)
    end
  end
end
