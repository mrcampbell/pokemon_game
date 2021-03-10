defmodule PokemonGame.Shared.StatGroup do
    use Ecto.Schema

    embedded_schema do
      field :hp, :integer
      field :atk, :integer
    end

  # use Ecto.Type

  # def type, do: :map

  # @behaviour Ecto.Type

  # @enforce_keys [:hp, :atk, :def, :spec_atk, :spec_def, :speed]
  # defstruct hp: 0, atk: 0, def: 0, spec_atk: 0, spec_def: 0, speed: 0, evasion: 0, accuracy: 0

  # @spec dump(params :: String.t() | any()) :: {:ok, PokemonGame.Shared.StatGroup}
  # def dump(params) when is_binary(params) do
  #   {:ok, Jason.decode!(params)}
  # end
  # def dump(_), do: :error


  # @type stat_group :: %{
  #   hp: pos_integer(),
  #   atk: pos_integer(),
  #   def: pos_integer(),
  #   spec_atk: pos_integer(),
  #   spec_def: pos_integer(),
  #   speed: pos_integer(),
  # }
  # @type battle_stat_group :: %{
  #   hp: pos_integer(),
  #   atk: pos_integer(),
  #   def: pos_integer(),
  #   spec_atk: pos_integer(),
  #   spec_def: pos_integer(),
  #   speed: pos_integer(),
  #   accuracy: pos_integer(),
  #   evasion: pos_integer(),
  # }
  # @spec cast(params :: stat_group() | battle_stat_group() | any()) :: {:ok, binary()}
  # def cast(%{hp: _hp, atk: _atk, def: _def, spec_atk: _spec_atk, spec_def: _spec_def, speed: _speed} = params) when is_map(params) do
  #   {:ok, Jason.encode!(params)}
  # end

  # def cast(_), do: :error

  # def load(data) when is_map(data) do
  #   IO.inspect(data)
  # end

end
