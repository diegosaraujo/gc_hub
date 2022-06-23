defmodule GcHub.Lider.Get do
  alias GcHub.{Lider, Repo}
  alias Ecto.UUID


  @doc """
  Permite realizar a busca de um líder atráves de um hash.
  """
  @spec call(String.t()) :: any()
  def call(hash) do
    case UUID.cast(hash) do
      :error -> {:error, "Formato de Hash inválido."}
      {:ok, hash} -> find_by_hash(hash)
    end
  end


  defp find_by_hash(hash) do
    case Repo.get_by(Lider, hash: hash) do
      nil -> {:error, "O Líder informado não foi encontrado."}
      lider -> {:ok, lider}
    end
  end
end
