defmodule GcHub.Repo.Migrations.AlterColumnLiderTable do
  use Ecto.Migration

  def change do
    alter table(:lider) do
      modify :telefone, :string
    end
  end
end
