defmodule ExMon.Game.Status do
  alias ExMon.Game

  def print_round_menssage() do
    IO.puts("\n====== The game is started =====\n")
    IO.inspect(Game.info())
    IO.puts("\n-------------------------------")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n====== Invalid move, #{move}. =====\n")
  end

  def attack(move) do
    IO.puts("\n====== Movimento de ataque #{move}. =====\n")
  end

  def print_move_menssage(:computer, :attack, damage) do
    IO.puts("\n====== The Player attacked the computer dealing #{damage} damage. =====\n")
  end

  def print_move_menssage(:player, :attack, damage) do
    IO.puts("\n====== The Computer attacked the player dealing #{damage} damage. =====\n")
  end
end
