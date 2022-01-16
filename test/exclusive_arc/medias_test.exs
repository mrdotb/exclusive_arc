defmodule ExclusiveArc.MediasTest do
  use ExclusiveArc.DataCase

  alias ExclusiveArc.Medias

  describe "documents" do
    alias ExclusiveArc.Medias.Document

    import ExclusiveArc.MediasFixtures

    @invalid_attrs %{name: nil}

    test "list_documents/0 returns all documents" do
      document = document_fixture()
      assert Medias.list_documents() == [document]
    end

    test "get_document!/1 returns the document with given id" do
      document = document_fixture()
      assert Medias.get_document!(document.id) == document
    end

    test "create_document/1 with valid data creates a document" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Document{} = document} = Medias.create_document(valid_attrs)
      assert document.name == "some name"
    end

    test "create_document/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medias.create_document(@invalid_attrs)
    end

    test "update_document/2 with valid data updates the document" do
      document = document_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Document{} = document} = Medias.update_document(document, update_attrs)
      assert document.name == "some updated name"
    end

    test "update_document/2 with invalid data returns error changeset" do
      document = document_fixture()
      assert {:error, %Ecto.Changeset{}} = Medias.update_document(document, @invalid_attrs)
      assert document == Medias.get_document!(document.id)
    end

    test "delete_document/1 deletes the document" do
      document = document_fixture()
      assert {:ok, %Document{}} = Medias.delete_document(document)
      assert_raise Ecto.NoResultsError, fn -> Medias.get_document!(document.id) end
    end

    test "change_document/1 returns a document changeset" do
      document = document_fixture()
      assert %Ecto.Changeset{} = Medias.change_document(document)
    end
  end

  describe "images" do
    alias ExclusiveArc.Medias.Image

    import ExclusiveArc.MediasFixtures

    @invalid_attrs %{name: nil}

    test "list_images/0 returns all images" do
      image = image_fixture()
      assert Medias.list_images() == [image]
    end

    test "get_image!/1 returns the image with given id" do
      image = image_fixture()
      assert Medias.get_image!(image.id) == image
    end

    test "create_image/1 with valid data creates a image" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Image{} = image} = Medias.create_image(valid_attrs)
      assert image.name == "some name"
    end

    test "create_image/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medias.create_image(@invalid_attrs)
    end

    test "update_image/2 with valid data updates the image" do
      image = image_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Image{} = image} = Medias.update_image(image, update_attrs)
      assert image.name == "some updated name"
    end

    test "update_image/2 with invalid data returns error changeset" do
      image = image_fixture()
      assert {:error, %Ecto.Changeset{}} = Medias.update_image(image, @invalid_attrs)
      assert image == Medias.get_image!(image.id)
    end

    test "delete_image/1 deletes the image" do
      image = image_fixture()
      assert {:ok, %Image{}} = Medias.delete_image(image)
      assert_raise Ecto.NoResultsError, fn -> Medias.get_image!(image.id) end
    end

    test "change_image/1 returns a image changeset" do
      image = image_fixture()
      assert %Ecto.Changeset{} = Medias.change_image(image)
    end
  end

  describe "files" do
    alias ExclusiveArc.Medias.File

    import ExclusiveArc.MediasFixtures

    @invalid_attrs %{name: nil}

    test "list_files/0 returns all files" do
      file = file_fixture()
      assert Medias.list_files() == [file]
    end

    test "get_file!/1 returns the file with given id" do
      file = file_fixture()
      assert Medias.get_file!(file.id) == file
    end

    test "create_file/1 with valid data creates a file" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %File{} = file} = Medias.create_file(valid_attrs)
      assert file.name == "some name"
    end

    test "create_file/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medias.create_file(@invalid_attrs)
    end

    test "update_file/2 with valid data updates the file" do
      file = file_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %File{} = file} = Medias.update_file(file, update_attrs)
      assert file.name == "some updated name"
    end

    test "update_file/2 with invalid data returns error changeset" do
      file = file_fixture()
      assert {:error, %Ecto.Changeset{}} = Medias.update_file(file, @invalid_attrs)
      assert file == Medias.get_file!(file.id)
    end

    test "delete_file/1 deletes the file" do
      file = file_fixture()
      assert {:ok, %File{}} = Medias.delete_file(file)
      assert_raise Ecto.NoResultsError, fn -> Medias.get_file!(file.id) end
    end

    test "change_file/1 returns a file changeset" do
      file = file_fixture()
      assert %Ecto.Changeset{} = Medias.change_file(file)
    end
  end

  describe "reports" do
    alias ExclusiveArc.Medias.Report

    import ExclusiveArc.MediasFixtures

    @invalid_attrs %{name: nil}

    test "list_reports/0 returns all reports" do
      report = report_fixture()
      assert Medias.list_reports() == [report]
    end

    test "get_report!/1 returns the report with given id" do
      report = report_fixture()
      assert Medias.get_report!(report.id) == report
    end

    test "create_report/1 with valid data creates a report" do
      valid_attrs = %{name: "some name"}

      assert {:ok, %Report{} = report} = Medias.create_report(valid_attrs)
      assert report.name == "some name"
    end

    test "create_report/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Medias.create_report(@invalid_attrs)
    end

    test "update_report/2 with valid data updates the report" do
      report = report_fixture()
      update_attrs = %{name: "some updated name"}

      assert {:ok, %Report{} = report} = Medias.update_report(report, update_attrs)
      assert report.name == "some updated name"
    end

    test "update_report/2 with invalid data returns error changeset" do
      report = report_fixture()
      assert {:error, %Ecto.Changeset{}} = Medias.update_report(report, @invalid_attrs)
      assert report == Medias.get_report!(report.id)
    end

    test "delete_report/1 deletes the report" do
      report = report_fixture()
      assert {:ok, %Report{}} = Medias.delete_report(report)
      assert_raise Ecto.NoResultsError, fn -> Medias.get_report!(report.id) end
    end

    test "change_report/1 returns a report changeset" do
      report = report_fixture()
      assert %Ecto.Changeset{} = Medias.change_report(report)
    end
  end
end
