defmodule ExclusiveArc.ACL do
  use Ecto.Schema

  alias Ecto.Changeset
  alias ExclusiveArc.Medias.{Document, Image, File, Report}

  schema "acls" do
    belongs_to :document, Document
    belongs_to :image, Image
    belongs_to :file, File
    belongs_to :report, Report

    field :level, :string

    timestamps()
  end

  @doc false
  def changeset(acl, attrs, media) do
    acl
    |> Changeset.cast(attrs, [:level])
    |> Changeset.validate_required([:level])
    |> assoc_media(media)
    |> Changeset.check_constraint(:check_exclusive, :check_exclusive)
  end

  defp assoc_media(changeset, %Document{} = document) do
    changeset
    |> Changeset.put_assoc(:document, document)
    |> Changeset.foreign_key_constraint(:document_id)
    |> Changeset.unique_constraint(:document_id)
  end

  defp assoc_media(changeset, %Image{} = image) do
    changeset
    |> Changeset.put_assoc(:image, image)
    |> Changeset.foreign_key_constraint(:image_id)
    |> Changeset.unique_constraint(:image_id)
  end

  defp assoc_media(changeset, %File{} = file) do
    changeset
    |> Changeset.put_assoc(:file, file)
    |> Changeset.foreign_key_constraint(:file_id)
    |> Changeset.unique_constraint(:file_id)
  end

  defp assoc_media(changeset, %Report{} = report) do
    changeset
    |> Changeset.put_assoc(:report, report)
    |> Changeset.foreign_key_constraint(:report_id)
    |> Changeset.unique_constraint(:report_id)
  end
end
