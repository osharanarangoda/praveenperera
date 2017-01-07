defmodule Praveenperera.Mixfile do
  use Mix.Project

  def project do
    [app: :praveenperera,
     version: "0.0.1",
     elixir: "~> 1.4",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {Praveenperera, []},
     applications: [:phoenix, :phoenix_html, :cowboy, :logger,
                    :timex]]
  end

  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 1.2"},
      {:phoenix_pubsub, "~> 1.0"},
      {:phoenix_ecto, "~> 3.0"},
      {:poison, "~> 2.0", override: true},
      {:phoenix_html, "~> 2.6", override: true },
      {:phoenix_live_reload, "~> 1.0", only: :dev},
      {:cowboy, "~> 1.0"},
      {:phoenix_haml, github: "chrismccord/phoenix_haml"},
      {:mailgun, "~> 0.1"},
      {:timex, "~> 3.0"},
      {:corsica, "~> 0.4"},
      {:mix_test_watch, "~> 0.2", only: :dev}
    ]
  end
end
