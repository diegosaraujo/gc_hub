defmodule GcHub.Lider do

  use Ecto.Schema
  import Ecto.Changeset

  @required [:nome, :nome_completo, :telefone]

  schema "lider" do
    field :nome, :string
    field :nome_completo, :string
    field :telefone, :string
    field :hash, Ecto.UUID, autogenerate: true
    timestamps()
  end

  def build(params) do
    params
    |> changeset()
    |> apply_action(:insert)
  end

  defp changeset(params), do: create_changeset(%__MODULE__{}, params)
  defp changeset(lider, params), do: create_changeset(lider, params)

  defp create_changeset(lider, params \\ %{}) do
    lider
    |> cast(params, @required)
    |> validate_required(@required)
  end
end
