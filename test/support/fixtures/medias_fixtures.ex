defmodule ExclusiveArc.MediasFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `ExclusiveArc.Medias` context.
  """

  @doc """
  Generate a document.
  """
  def document_fixture(attrs \\ %{}) do
    {:ok, document} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> ExclusiveArc.Medias.create_document()

    document
  end

  @doc """
  Generate a image.
  """
  def image_fixture(attrs \\ %{}) do
    {:ok, image} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> ExclusiveArc.Medias.create_image()

    image
  end

  @doc """
  Generate a file.
  """
  def file_fixture(attrs \\ %{}) do
    {:ok, file} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> ExclusiveArc.Medias.create_file()

    file
  end

  @doc """
  Generate a report.
  """
  def report_fixture(attrs \\ %{}) do
    {:ok, report} =
      attrs
      |> Enum.into(%{
        name: "some name"
      })
      |> ExclusiveArc.Medias.create_report()

    report
  end
end
