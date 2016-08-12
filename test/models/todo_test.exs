defmodule ApiAuth.TodoTest do
  use ApiAuth.ModelCase

  alias ApiAuth.Todo

  @valid_attrs %{complete: true, description: "some content", owner_id: 1}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Todo.changeset(%Todo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Todo.changeset(%Todo{}, @invalid_attrs)
    refute changeset.valid?
  end
end
