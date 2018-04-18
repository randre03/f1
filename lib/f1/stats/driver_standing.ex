defmodule F1.Stats.DriverStanding do
  use Ecto.Schema

  @primary_key {:driverStandingsId, :id, autogenerate: false}

  schema "driverStandings" do
    field(:raceId, :integer)
    field(:points, :integer)
    field(:position, :integer)
    field(:positionText, :string)
    field(:wins, :integer)
  end
end
