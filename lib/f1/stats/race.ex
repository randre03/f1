defmodule F1.Stats.Race do
  use Ecto.Schema

  @primary_key {:raceId, :id, autogenerate: false}

  schema "races" do
    field(:year, :integer)
    field(:round, :integer)
    field(:circuitId, :integer)
    field(:name, :string)
    field(:date, :string)
    field(:time, :string)
    field(:url, :string)
    # has_many(:results, F1.Stats.Result)
  end
end
