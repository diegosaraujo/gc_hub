defmodule GcHubWeb.LiderView do
  use GcHubWeb, :view

  def render("index.json", %{lider: lider}) do
    %{
        nome: lider.nome,
        nome_completo: lider.nome_completo,
        hash: lider.hash,
        inserted_at: lider.inserted_at,
      }
  end

end
