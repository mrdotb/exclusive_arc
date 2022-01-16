defmodule ExclusiveArc.Repo.Migrations.CreateAcls do
  use Ecto.Migration

  def change do
    create table(:acls) do
      add :document_id, references(:documents, on_delete: :delete_all)
      add :image_id, references(:images, on_delete: :delete_all)
      add :file_id, references(:files, on_delete: :delete_all)
      add :report_id, references(:reports, on_delete: :delete_all)

      # acl is a simple text here is not the point of the til
      add :level, :text, null: false

      timestamps()
    end

    check_exclusive = """
    (
      (document_id IS NOT NULL)::integer +
      (image_id IS NOT NULL)::integer +
      (file_id IS NOT NULL)::integer +
      (report_id IS NOT NULL)::integer
    ) = 1
    """

    create constraint(:acls, :check_exclusive, check: check_exclusive)

    create index(:acls, [:document_id], unique: true, where: "document_id IS NOT NULL")
    create index(:acls, [:image_id], unique: true, where: "image_id IS NOT NULL")
    create index(:acls, [:file_id], unique: true, where: "file_id IS NOT NULL")
    create index(:acls, [:report_id], unique: true, where: "report_id IS NOT NULL")
  end
end
