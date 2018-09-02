defmodule Elbat.Mixfile do
  use Mix.Project

  def package() do
    [maintainers: ["Feng Zhou", "Marco Milanesi"],
     licenses: ["MIT"],
     description: "ascii tables for cli",
     links: %{"GitHub" => "https://github.com/kpanic/elbat"}]
  end

  def project() do
    [app: :elbat,
     version: "0.0.6",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  def application() do
    [applications: [:logger]]
  end

  defp deps() do
    []
  end
end
