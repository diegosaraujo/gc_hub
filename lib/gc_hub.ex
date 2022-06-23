defmodule GcHub do
  @moduledoc """
  Esse módulo é utilizado como uma Facade. Ele irá interligar a camada Web (GcHub.Web) com a Camada de Negócio (GcHub).
  Os delegates deste módulo são chamados pelo Controller.
  """
  alias GcHub.Lider

  defdelegate fetch_lider(params), to: Lider.Get, as: :call

end
