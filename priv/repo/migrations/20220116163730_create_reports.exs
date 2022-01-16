defmodule ExclusiveArc.Repo.Migrations.CreateReports do
  use Ecto.Migration

  def change do
    create table(:reports) do
      add :name, :string

      timestamps()
    end
  end
end
