defmodule ElixirTutorial.User do
  # Structs are extensions built on top of maps that provide compile-time checks and default values.
  @doc """

    ##Examples

      iex> %ElixirTutorial.User{oops: :field}
      ** (KeyError) key :oops not found in: %User{age: 27, name: "John"}
  """
  @enforce_keys [:name]
  defstruct name: "John", age: 27

  def add_child(child) when is_list(child) do
    Enum.each(child, fn x ->
      IO.puts(x)
    end)
  end
end
