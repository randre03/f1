defmodule F1.Schema.ConstructorStanding do
  use Ecto.Schema

  @primary_key {:constructorStandingsId, :id, autogenerate: false}

  schema "constructorStandings" do
    field(:raceId, :integer)
    field(:constructorId, :integer)
    field(:points, :integer)
    field(:position, :integer)
    field(:positionText, :string)
    field(:wins, :integer)
  end
end
