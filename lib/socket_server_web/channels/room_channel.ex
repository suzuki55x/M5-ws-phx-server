defmodule SocketServerWeb.RoomChannel do
  use Phoenix.Channel

  def join("room:" <> _room_id, _msg, socket) do
    {:ok, socket}
  end

  # chime
  def handle_in("call", params, socket) do
    broadcast! socket, "call", %{body: params["body"]}
    {:noreply, socket}
  end
end
