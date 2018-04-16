defmodule F1.Schema.Result do
  use Ecto.Schema

  @primary_key {:resultId, :id, autogenerate: false}

  schema "results" do
    field :raceId, :integer
    field :driverId, :integer
    field :constructorId, :integer
    field :number, :integer
    field :grid, :integer
    field :position, :integer
    field :positionText, :string
    field :positionOrder, :integer
    field :points, :integer
    field :laps, :integer
    field :time, :string
    field :milliseconds, :integer
    field :fastestLap, :integer
    field :rank, :integer
    field :fastestLapTime, :string
    field :fastestLapSpeed, :float
    field :statusId, :integer
  end
end
