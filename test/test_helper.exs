ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ApiAuth.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ApiAuth.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ApiAuth.Repo)

