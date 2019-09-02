defmodule Xain.Mixfile do
  use Mix.Project

  @version "0.6.1"

  def project do
    [
      app: :xain,
      version: @version,
      elixir: "~> 1.0",
      package: package(),
      deps: deps(),
      description: """
      An html DSL package.
      """
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [
      {:html_sanitize_ex, github: 'carakan/html_sanitize_ex'}
    ]
  end

  defp package do
    [
      maintainers: ["Stephen Pallen", "Roman Smirnov"],
      licenses: ["MIT"],
      links: %{"Github" => "https://github.com/smpallen99/xain"},
      files: ~w(lib README.md mix.exs LICENSE)
    ]
  end
end
