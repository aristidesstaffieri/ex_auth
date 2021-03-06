defmodule ApiAuth.UserView do
  use ApiAuth.Web, :view

  def render("show.json", %{user: user}) do
    %{data: render_one(user, ApiAuth.UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      email: user.email}
  end
end
