defmodule KanbanWeb.PageLive do
  use KanbanWeb, :live_view

  def mount(_params, %{"board_id" => board_id}, socket) do
    with {:ok, board} <- Kanban.Board.find(board_id) do
      {:ok, assign(socket, :board, board)}
    else
      {:error, _reason} -> {:ok, redirect(socket, to: "/error")}
    end
  end

  def handle_event("add_card", %{"column" => column_id}, socket) do
    {id, _} = Integer.parse(column_id)
    %Kanban.Card{column_id: id, content: "Something new"}
      |> Kanban.Repo.insert!()

    {:ok, new_board} = Kanban.Board.find(socket.assigns.board.id)
    {:noreply, assign(socket, :board, new_board)}
  end

  def handle_event("update_card", %{"card" => card_id, "value" => new_content}, socket) do
    {id, _} = Integer.parse(card_id)
    Kanban.Card.update(id, %{content: new_content})
    {:ok, new_board} = Kanban.Board.find(socket.assigns.board.id)

    KanbanWeb.Endpoint.broadcast(topic(new_board.id), "board:updated", new_board)
    {:noreply, assign(socket, :board, new_board)}
  end

  def handle_info(%{topic: message_topic, event: "board:updated", payload: board}, socket) do
    cond do
      topic(board.id) == message_topic ->
        {:noreply, assign(socket, :board, Kanban.Repo.preload(board, columns: :cards))}
      true ->
        {:noreply, socket}
    end
  end

  def topic(board_id) do
    "board:#{board_id}"
  end
end
