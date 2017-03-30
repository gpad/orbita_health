defmodule OrbitaHealth.AcceptanceCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      use Wallaby.DSL

      alias OrbitaHealth.Repo
      import Ecto
      import Ecto.Changeset
      import Ecto.Query

      import OrbitaHealth.Router.Helpers
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(OrbitaHealth.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(OrbitaHealth.Repo, {:shared, self()})
    end

    metadata = Phoenix.Ecto.SQL.Sandbox.metadata_for(OrbitaHealth.Repo, self())
    {:ok, session} = Wallaby.start_session(metadata: metadata)
    {:ok, session: session}
  end
end
