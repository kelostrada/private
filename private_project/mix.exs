defmodule PrivateProject.MixProject do
  use Mix.Project

  @organization System.get_env("ORGANIZATION") || "xxx"

  def project do
    [
      app: :private_project,
      version: "0.1.0",
      elixir: "~> 1.3",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.3"},
      {:plug, "~> 1.5.1", organization: @organization},
      {:ex_doc, "~> 0.17.1", only: :dev},
    ]
  end

  defp description do
    "Project to test private dependencies"
  end

  defp package do
    [organization: @organization,
     maintainers: ["Bartosz Kalinowski"],
     licenses: ["MIT"],
     links: %{"GitHub": "https://github.com/kelostrada/private"}]
  end
end
