defmodule MyService.Repo do
  use Ecto.Repo,
    otp_app: :my_service,
    adapter: Ecto.Adapters.Postgres
end
