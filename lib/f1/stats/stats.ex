defmodule F1.Stats do
  import Ecto.Query
  alias F1.Repo

  def total_points(:driver) do
      from(
        r in F1.Stats.Result,
        join: d in F1.Stats.Driver,
        where: r.driverId == d.driverId,
        join: race in F1.Stats.Race,
        where: r.raceId == race.raceId,
        where: race.round >= 1,
        select: %{driver: d.surname, points: sum(r.points)},
        group_by: d.driverId,
        order_by: [desc: sum(r.points)]
      )
    |> Repo.all
  end

  def total_points(:constructor) do
    from(
      r in F1.Stats.Result,
      join: c in F1.Stats.Constructor,
      where: r.constructorId == c.constructorId,
      join: race in F1.Stats.Race,
      where: r.raceId == race.raceId,
      where: race.round >= 1,
      select: %{constructor: c.name, points: sum(r.points)},
      group_by: c.constructorId,
      order_by: [desc: sum(r.points)])
    |> Repo.all
  end
end
