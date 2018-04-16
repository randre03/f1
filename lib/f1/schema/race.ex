defmodule F1.Schema.Race do
  use Ecto.Schema

  @primary_key {:raceId, :id, autogenerate: false}

  schema "races" do
    field :year, :integer
    field :round, :integer
    field :circuitId, :integer
    field :name, :string
    field :date, :string
    field :time, :string
    field :url, :string
  end
end
