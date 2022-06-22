defmodule GcHub.Lider do
  alias GcHub.Repo

  use Ecto.Schema
  import Ecto.Changeset



  @required_params [:nome, :telefone]

  schema "lider" do
    field :nome, :string
    field :nome_completo, :string
    field :telefone, :string
    field :hash, Ecto.UUID, autogenerate: true
    timestamps()
  end

  def changeset(params), do: create_changeset(%__MODULE__{}, params)
  def changeset(lider, params), do: create_changeset(lider, params)

  def create_changeset(lider, params \\ %{}) do
    lider
    |> cast(params, [:nome, :nome_completo, :telefone])
    |> validate_required([:nome, :nome_completo, :telefone])
    |> apply_action(:insert)
  end

  def find_by_hash(hash) do
    Repo.get_by(GcHub.Lider, hash: hash)
  end

  def get_all(), do: Repo.all(GcHub.Lider)

end
