defmodule ElixirTutorial.Tut1 do
  @moduledoc """
  Documentation for ElixirTutorial.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirTutorial.hello()
      :world

  Way to lists functions :
    - ElixirTutorial.Tut1.module_info()
    - exports ElixirTutorial.Tut1
  """
  def hello do
    :world
  end

  def hello(a) when is_list(a) do # What if I move this above hello()
    Enum.map(a, &hello/1)
  end

  def hello(a) do # What if I move this above hello(a) when is_list
    "Hello #{a}"
  end

  def hello(a, b) do
    hello(a) <> hello(b)
  end

  def hello_crypto(a) do ## Calling erlang function
    a
    |> :crypto.hash(:sha256)
    |> Base.encode64()
  end

  def a <~ b when is_map(a) and is_map(b) do
    Map.merge(a, b)
  end

  def a <~ b when is_list(a) and is_list(b) do
    a ++ b
  end
end
