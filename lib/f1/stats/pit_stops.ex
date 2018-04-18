defmodule F1.Stats.PitStop do
  use Ecto.Schema

  @primary_key {:raceId, :id, autogenerate: false}

  schema "pitStops" do
    field(:driverId, :integer)
    field(:stop, :integer)
    field(:lap, :integer)
    field(:time, :string)
    field(:duration, :float)
    field(:milliseconds, :integer)
  end
end
