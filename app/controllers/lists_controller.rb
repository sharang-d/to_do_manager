class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.tasks
    @task = Task.new
  end

  def new 
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.color = params[:color][:color]
    if @list.save
      redirect_to @list
    else
      render 'new'
    end
  end

  private
    def list_params
      params.require(:list).permit(:title, :status)
    end
end
