defmodule F1.Stats.Driver do
  use Ecto.Schema

  @primary_key {:driverId, :id, autogenerate: false}

  schema "drivers" do
    field :driverRef, :string
    field :number, :integer
    field :code, :string
    field :forename, :string
    field :surname, :string
    field :dob, :string
    field :nationality, :string
    field :url, :string
  end
end
