defmodule F1.Stats.Season do
  use Ecto.Schema

  @moduledoc """
  I don't really see using this at all.
  It just lists the Years (seasons) for FormulaOne
  along with a wkipedia link to information on that season.
  """

  schema "seasons" do
    field :year, :integer
    field :url, :string
  end
end
