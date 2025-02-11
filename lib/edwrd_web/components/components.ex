defmodule EdwrdWeb.Components do
  defdelegate accordion(assigns), to: EdwrdWeb.Components.Accordion, as: :accordion
end
