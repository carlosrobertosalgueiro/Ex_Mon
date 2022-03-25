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

  describe "info/0" do
    test "returns the current game state" do
      player = ExMon.create_player("carlos", :soco, :chute, :cura)
      computer = ExMon.create_player("PC_carlos", :soco, :chute, :cura)

      Game.start(player, computer)

      expected_response = %{
        computer: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "carlos"
        },
        player: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "PC_carlos"
        },
        status: :started,
        turn: :player
      }

      assert expected_response == Game.info()
    end
  end

  describe "update/1" do
    test "returns the game state updated" do
      player = ExMon.create_player("carlos", :soco, :chute, :cura)
      computer = ExMon.create_player("PC_carlos", :soco, :chute, :cura)

      Game.start(player, computer)

      expected_response = %{
        computer: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "carlos"
        },
        player: %Player{
          life: 100,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "PC_carlos"
        },
        status: :started,
        turn: :player
      }

      assert expected_response == Game.info()

      new_state = %{
        computer: %Player{
          life: 85,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "carlos"
        },
        player: %Player{
          life: 50,
          moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
          name: "PC_carlos"
        },
        status: :started,
        turn: :player
      }

      Game.update(new_state)

      expected_response = %{new_state | turn: :computer, status: :continue}

      assert expected_response == Game.info()
    end
  end

  describe "player" do
    test "return the last player" do
      player = ExMon.create_player("carlos", :soco, :chute, :cura)
      computer = ExMon.create_player("PC_carlos", :soco, :chute, :cura)

      Game.start(player, computer)

      expected_response = %Player{
        life: 100,
        moves: %{move_avg: :soco, move_heal: :cura, move_rnd: :chute},
        name: "PC_carlos"
      }

      assert expected_response == Game.player()
    end
  end
end
