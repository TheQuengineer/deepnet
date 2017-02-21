defmodule Deepnet.Mixfile do
  use Mix.Project

  def project() do
    [app: :deepnet,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application() do
    [applications:
      [
        :logger,
        :sfmt,
        :numerix,
        :matrix
      ],
     mod: {Deepnet, []}]
  end

  defp deps() do
    [
      {:matrix, "~> 0.3.2"},
      {:numerix, "~> 0.4.2"},
      {:sfmt, "~> 0.13.0"}
    ]
  end
end
