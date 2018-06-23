defmodule PrivateProjectTest do
  use ExUnit.Case
  doctest PrivateProject

  test "greets the world" do
    assert PrivateProject.hello() == :world
  end
end
