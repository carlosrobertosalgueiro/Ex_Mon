defmodule ExMonTest do
  use ExUnit.Case

  import ExUnit.CaptureIO

  alias ExMon.Player

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

  describe "start_game/1" do
    test "when the game is started, returns a message" do
      player = Player.build("carlos", :soco, :chute, :cura)

      messages =
        capture_io(fn ->
          assert ExMon.start_game(player) == :ok
        end)

      assert messages =~ "The game is started"
      assert messages =~ "status: :started"
    end
  end

  describe "make_move/1" do
    setup do
      player = Player.build("carlos", :soco, :chute, :cura)

      capture_io(fn ->
        ExMon.start_game(player)
      end)

      :ok
    end

    test "when the move is valid, do the move and the computer makes s move" do
      messages =
        capture_io(fn ->
          ExMon.make_move(:chute)
        end)

      assert messages =~ "The Player attacked the computer"
      assert messages =~ "The Computer attacked the player"
    end

    test "when the move is invalid, returns an error message" do
      messages =
        capture_io(fn ->
          ExMon.make_move(:invalido)
        end)

      assert messages =~ "Invalid move, invalido"
    end
  end
end
