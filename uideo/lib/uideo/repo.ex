defmodule Uideo.Repo do
  use Ecto.Repo,
    otp_app: :uideo,
    adapter: Ecto.Adapters.Postgres
end
