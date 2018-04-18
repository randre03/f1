defmodule F1.Stats.ConstructorResult do
  use Ecto.Schema

  @primary_key {:constructorResultsId, :id, autogenerate: false}

  schema "constructorResults" do
    field(:raceId, :integer)
    field(:constructorId, :integer)
    field(:points, :integer)
    field(:status, :string)
  end
end
