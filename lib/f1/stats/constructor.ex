defmodule F1.Stats.Constructor do
  use Ecto.Schema

  @primary_key {:constructorId, :id, autogenerate: false}

  schema "constructors" do
    field(:constructorRef, :string)
    field(:name, :string)
    field(:nationality, :string)
    field(:url, :string)
  end
end
