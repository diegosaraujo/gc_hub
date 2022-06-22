defmodule GcHub.Repo.Migrations.CreateLiderTable do
  use Ecto.Migration

  def change do
    create table(:lider) do
      add :nome, :string
      add :nome_completo, :string
      add :telefone, :integer
      add :hash, :uuid
      timestamps()
    end
  end
end
