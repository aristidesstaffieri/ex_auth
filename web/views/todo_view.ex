defmodule ApiAuth.TodoView do
  use ApiAuth.Web, :view

  def render("index.json", %{todos: todos}) do
    %{data: render_many(todos, ApiAuth.TodoView, "todo.json")}
  end

  def render("show.json", %{todo: todo}) do
    %{data: render_one(todo, ApiAuth.TodoView, "todo.json")}
  end

  def render("todo.json", %{todo: todo}) do
    %{id: todo.id,
      description: todo.description,
      complete: todo.complete}
  end
end
