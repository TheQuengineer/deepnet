defmodule Deepnet do
  use Application

  @moduledoc """
  `Deepnet` is a 3 layered neural network architecture fully implemented in Elixir.
  It utilizes an Elixir agent to store the state of the process that is working
  on a particular problem. This project is associated with the post on
  Automating The Future regarding multi layered neural networks in Elixir.

  """

  defstruct [
    user_input: [[1, 0, 0],[1,0,1]],
    desired_target: [1, 1, 1]
  ]

  #######
  # API #
  #######

  @doc """
  Starts DeepNet
  """
  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(Deepnet.Network, [3, 3, 3], [function: :create]),
    ]

    opts = [strategy: :one_for_one, name: Deepnet.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @doc """
  Entry Point into the neural network. Starts the training and learning process.
  """
  def learn() do
    Deepnet.Network.initialize_weights()
    data = %Deepnet{}
    Deepnet.Network.train(data.user_input, data.desired_target)
    learn(Map.fetch!(Deepnet.Network.get(), :error_rate), data,  0)
  end

  ###################
  #  IMPLEMENTATION #
  ###################

  defp learn(error_rate, data,  epoch) when error_rate >= 0.02 do
    Deepnet.Network.train(data.user_input, data.desired_target)
    error_rate = Map.fetch!(Deepnet.Network.get(), :error_rate)
    IO.puts("#{IO.ANSI.yellow}| EPOCH: #{epoch + 1} | ERROR RATE: #{error_rate}")
    learn(error_rate, data, epoch + 1)
  end

  defp learn(error_rate, data, epoch) when error_rate <= 0.02 do
    IO.puts("""
     #{IO.ANSI.green}
     Learned to achieve target #{inspect(data.desired_target)} in #{epoch} epochs.
     Network operated with the user inputs #{inspect(data.user_input)}.
     The Final ERROR RATE for the network is #{error_rate}.
    """)
  end
 end
