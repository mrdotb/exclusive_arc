defmodule ExclusiveArc.Repo.Migrations.CreateImages do
  use Ecto.Migration

  def change do
    create table(:images) do
      add :name, :string

      timestamps()
    end
  end
end
