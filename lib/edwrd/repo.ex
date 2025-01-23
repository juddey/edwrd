defmodule Edwrd.Repo do
  use Ecto.Repo,
    otp_app: :edwrd,
    adapter: Ecto.Adapters.Postgres
end
