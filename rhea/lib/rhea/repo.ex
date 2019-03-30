defmodule Rhea.Repo do
  use Ecto.Repo,
    otp_app: :rhea,
    adapter: Ecto.Adapters.Postgres
end
