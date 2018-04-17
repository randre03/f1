defmodule F1.Stats.Circuit do
  use Ecto.Schema

  @primary_key {:circuitId, :id, autogenerate: false}

  schema "circuits" do
    field(:circuitRef, :string)
    field(:name, :string)
    field(:location, :string)
    field(:country, :string)
    field(:lat, :float)
    field(:lng, :float)
    field(:alt, :integer)
    field(:url, :string)
  end
end
