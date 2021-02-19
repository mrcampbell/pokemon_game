defmodule PokemonGame.Pokedex do
  @moduledoc """
  The Pokedex context.
  """

  import Ecto.Query, warn: false
  alias PokemonGame.Repo

  alias PokemonGame.Pokedex.Breed

  @doc """
  Returns the list of breeds.

  ## Examples

      iex> list_breeds()
      [%Breed{}, ...]

  """
  def list_breeds do
    Repo.all(Breed)
  end

  @doc """
  Gets a single breed.

  Raises `Ecto.NoResultsError` if the Breed does not exist.

  ## Examples

      iex> get_breed!(123)
      %Breed{}

      iex> get_breed!(456)
      ** (Ecto.NoResultsError)

  """
  def get_breed!(id), do: Repo.get!(Breed, id)

  @doc """
  Creates a breed.

  ## Examples

      iex> create_breed(%{field: value})
      {:ok, %Breed{}}

      iex> create_breed(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_breed(attrs \\ %{}) do
    %Breed{}
    |> Breed.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a breed.

  ## Examples

      iex> update_breed(breed, %{field: new_value})
      {:ok, %Breed{}}

      iex> update_breed(breed, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_breed(%Breed{} = breed, attrs) do
    breed
    |> Breed.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a breed.

  ## Examples

      iex> delete_breed(breed)
      {:ok, %Breed{}}

      iex> delete_breed(breed)
      {:error, %Ecto.Changeset{}}

  """
  def delete_breed(%Breed{} = breed) do
    Repo.delete(breed)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking breed changes.

  ## Examples

      iex> change_breed(breed)
      %Ecto.Changeset{data: %Breed{}}

  """
  def change_breed(%Breed{} = breed, attrs \\ %{}) do
    Breed.changeset(breed, attrs)
  end

  alias PokemonGame.Pokedex.Move

  @doc """
  Returns the list of moves.

  ## Examples

      iex> list_moves()
      [%Move{}, ...]

  """
  def list_moves do
    Repo.all(Move)
  end

  @doc """
  Gets a single move.

  Raises `Ecto.NoResultsError` if the Move does not exist.

  ## Examples

      iex> get_move!(123)
      %Move{}

      iex> get_move!(456)
      ** (Ecto.NoResultsError)

  """
  def get_move!(id), do: Repo.get!(Move, id)

  @doc """
  Creates a move.

  ## Examples

      iex> create_move(%{field: value})
      {:ok, %Move{}}

      iex> create_move(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_move(attrs \\ %{}) do
    %Move{}
    |> Move.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a move.

  ## Examples

      iex> update_move(move, %{field: new_value})
      {:ok, %Move{}}

      iex> update_move(move, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_move(%Move{} = move, attrs) do
    move
    |> Move.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a move.

  ## Examples

      iex> delete_move(move)
      {:ok, %Move{}}

      iex> delete_move(move)
      {:error, %Ecto.Changeset{}}

  """
  def delete_move(%Move{} = move) do
    Repo.delete(move)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking move changes.

  ## Examples

      iex> change_move(move)
      %Ecto.Changeset{data: %Move{}}

  """
  def change_move(%Move{} = move, attrs \\ %{}) do
    Move.changeset(move, attrs)
  end

  alias PokemonGame.Pokedex.MoveLearn

  @doc """
  Returns the list of move_learns.

  ## Examples

      iex> list_move_learns()
      [%MoveLearn{}, ...]

  """
  def list_move_learns do
    Repo.all(MoveLearn)
  end

  @doc """
  Gets a single move_learns.

  Raises `Ecto.NoResultsError` if the Move learns does not exist.

  ## Examples

      iex> get_move_learns!(123)
      %MoveLearn{}

      iex> get_move_learns!(456)
      ** (Ecto.NoResultsError)

  """
  def get_move_learns!(id), do: Repo.get!(MoveLearn, id)

  @doc """
  Creates a move_learns.

  ## Examples

      iex> create_move_learns(%{field: value})
      {:ok, %MoveLearn{}}

      iex> create_move_learns(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_move_learns(attrs \\ %{}) do
    %MoveLearn{}
    |> MoveLearn.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a move_learns.

  ## Examples

      iex> update_move_learns(move_learns, %{field: new_value})
      {:ok, %MoveLearn{}}

      iex> update_move_learns(move_learns, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_move_learns(%MoveLearn{} = move_learns, attrs) do
    move_learns
    |> MoveLearn.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a move_learns.

  ## Examples

      iex> delete_move_learns(move_learns)
      {:ok, %MoveLearn{}}

      iex> delete_move_learns(move_learns)
      {:error, %Ecto.Changeset{}}

  """
  def delete_move_learns(%MoveLearn{} = move_learns) do
    Repo.delete(move_learns)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking move_learns changes.

  ## Examples

      iex> change_move_learns(move_learns)
      %Ecto.Changeset{data: %MoveLearn{}}

  """
  def change_move_learns(%MoveLearn{} = move_learns, attrs \\ %{}) do
    MoveLearn.changeset(move_learns, attrs)
  end
end
