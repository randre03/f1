defmodule F1.Stats do
  import Ecto.Query
  alias F1.Repo
  alias F1.Stats.Constructor

  def list_all(data) do
    data
    |> Repo.all
  end

  def total_number_of(data) do
    data
    |> Repo.all
    |> Enum.count
  end
end
