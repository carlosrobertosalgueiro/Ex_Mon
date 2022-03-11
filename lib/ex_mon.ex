defmodule ExMon do
  alias ExMon.Player
  alias ExMon.Game

  def create_player(move_avg, move_heal, move_rnd, name) do
    Player.build(move_avg, move_heal, move_rnd, name)
  end

  def start_game(player) do
    computer = create_player("PC_Carlos", :punch, :kick, :heal)
    Game.start(computer, player)
  end
end
