defmodule F1.Stats do
  import Ecto.Query
  alias F1.Repo

  def list_all(data) do
    data
    |> Repo.all()
  end

  def total_number_of(data) do
    data
    |> Repo.all()
    |> Enum.count()
  end

  def total_points(:driver) do
    query =
      from(
        r in F1.Stats.Result,
        join: d in F1.Stats.Driver,
        where: r.driverId == d.driverId
      )
    query =
      from(
        [r, d] in query,
        join: race in F1.Stats.Race,
        where: r.raceId == race.raceId
      )
    query =
      from(
        [r, d, race] in query,
        where: race.round >= 1,
        select: %{
          driver: d.surname,
          points: sum(r.points)},
        group_by: d.driverId,
        order_by: [desc: sum(r.points)]
      )
    Repo.all(query)
  end

  def total_points(:constructor) do
    query =
      from(
        r in F1.Stats.Result,
        join: c in F1.Stats.Constructor,
        where: r.constructorId == c.constructorId
      )
    query =
      from(
        [r, c] in query,
        join: race in F1.Stats.Race,
        where: r.raceId == race.raceId
      )
    query =
      from(
        [r, c, race] in query,
        where: race.round >= 1,
        select: %{
          constructor: c.name,
          points: sum(r.points)},
        group_by: c.constructorId,
        order_by: [desc: sum(r.points)]
      )
    Repo.all(query)
  end
end
