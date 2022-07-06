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
end
