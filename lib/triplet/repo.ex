defmodule Triplet.Repo do
  use Ecto.Repo,
    otp_app: :triplet,
    adapter: Ecto.Adapters.Postgres
end
