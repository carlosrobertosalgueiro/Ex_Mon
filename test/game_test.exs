defmodule ExMon.GameTest do
  use ExUnit.Case

  alias ExMon.{Game, Player}

  describe "start/2" do
    test "starts the game state" do
      player = ExMon.create_player("carlos", :soco, :chute, :cura)
      computer = ExMon.create_player("PC_carlos", :soco, :chute, :cura)

      assert {:ok, _pid} = Game.start(player, computer)
    end
  end
end
