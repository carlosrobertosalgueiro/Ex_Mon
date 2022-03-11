defmodule ExMon.Game do
  use Agent
  alias ExMon.Game.Status

  def start(computer, player) do
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}
    Agent.start_link(fn -> initial_value end, name: __MODULE__)
    Status.print_round_menssage()
  end

  def info do
    Agent.get(__MODULE__, & &1)
  end
end
