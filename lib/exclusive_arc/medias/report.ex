defmodule ExclusiveArc.Medias.Report do
  use Ecto.Schema
  import Ecto.Changeset

  schema "reports" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(report, attrs) do
    report
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
