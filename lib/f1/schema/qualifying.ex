defmodule F1.Schema.Qualifying do
  use Ecto.Schema

  @primary_key {:qualifyId, :id, autogenerate: false}

  schema "qualifying" do
    field :raceId, :integer
    field :driverId, :integer
    field :constructorId, :integer
    field :number, :integer
    field :position, :integer
    field :q1, :string
    field :q2, :string
    field :q3, :string
  end
end
