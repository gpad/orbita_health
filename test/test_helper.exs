{:ok, _} = Application.ensure_all_started(:wallaby)
Application.put_env(:wallaby, :base_url, "http://localhost:4001")

ExUnit.start

Ecto.Adapters.SQL.Sandbox.mode(OrbitaHealth.Repo, :manual)
