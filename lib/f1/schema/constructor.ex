defmodule F1.Schema.Constructor do
  use Ecto.Schema

  @primary_key {:constructorId, :id, autogenerate: false}

  schema "constructors" do
    field(:constructorRef, :string)
    field(:name, :string)
    field(:nationality, :string)
    field(:url, :string)
  end
end
