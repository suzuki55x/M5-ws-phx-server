defmodule SocketServerWeb.RoomChannel do

  def join("room:" <> user_id, msg, socket) do
    {:ok, socket}
  end

  # chime
  def handle_in("call", params, socket) do
    broadcast! socket, "call", %{body: params["body"]}
    {:noreply, socket}
  end
end
