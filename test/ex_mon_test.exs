defmodule ExMonTest do
  use ExUnit.Case

  describe "create_player/4" do
    test "returns a player" do
      expected_response = %ExMon.Player{
        life: 100,
        moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
        name: "carlos"
      }

      assert expected_response == ExMon.create_player("carlos", :soco, :chute, :cura)
    end
  end
end
