defmodule F1.Stats.Status do
  use Ecto.Schema

  @primary_key {:statusId, :id, autogenerate: false}

  schema "status" do
    field(:status, :string)
  end
end
