defmodule ExclusiveArc.Medias.Image do
  use Ecto.Schema
  import Ecto.Changeset

  schema "images" do
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(image, attrs) do
    image
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
