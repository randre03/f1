defmodule F1.Repo do
  use Ecto.Repo,
    otp_app: :f1,
    adapter: Sqlite.Ecto2
end
