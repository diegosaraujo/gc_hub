defmodule GcHub.Repo do
  use Ecto.Repo,
    otp_app: :gc_hub,
    adapter: Ecto.Adapters.Postgres
end
