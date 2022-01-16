defmodule ExclusiveArc.Medias.Document do
  use Ecto.Schema
  import Ecto.Changeset

  schema "documents" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(document, attrs) do
    document
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
