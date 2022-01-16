defmodule ExclusiveArc.Repo do
  use Ecto.Repo,
    otp_app: :exclusive_arc,
    adapter: Ecto.Adapters.Postgres
end
