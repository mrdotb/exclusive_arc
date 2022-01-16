defmodule ExclusiveArc.Repo.Migrations.CreateDocuments do
  use Ecto.Migration

  def change do
    create table(:documents) do
      add :name, :string

      timestamps()
    end
  end
end
