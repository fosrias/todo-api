class ToDosController < ApplicationController
  respond_to(:html, :xhtml, :hal_json, :hale_json)

  def index
    todos = ToDoCollection.find
    respond_with(todos)
  end

  def show
    todo = ToDo.find_by_uuid(params[:id])
    respond_with(todo)
  end
end
