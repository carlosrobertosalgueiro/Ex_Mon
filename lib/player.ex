defmodule ExMon.Player do
  requered_keys = [:file, :moves, :name]
  @max_life 100

  @enforce_keys requered_keys

  defstruct requered_keys

  def build(name, move_avg, move_heal, move_rnd) do
    %ExMon.Player{
      file: @max_life,
      moves: %{
        move_avg: move_avg,
        move_heal: move_heal,
        move_rnd: move_rnd
      },
      name: name
    }
  end
end
