defmodule F1.Stats.LapTime do
  use Ecto.Schema

  @primary_key {:raceId, :id, autogenerate: false}

  schema "lapTimes" do
    field(:driverId, :integer)
    field(:lap, :integer)
    field(:position, :integer)
    field(:time, :string)
    field(:milliseconds, :integer)
  end
end
