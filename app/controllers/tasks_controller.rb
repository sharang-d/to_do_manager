class TasksController < ApplicationController
  def create
    @task = Task.new(task_params)
    p @task
    respond_to do |format|
      if @task.save
        format.html { redirect_to List.find(@task.list_id) }
        format.js   {}
      else
        redirect_to List.find(@task.list_id)
      end
    end
  end

  def destroy
    @task = Task.find(params[:id])
    respond_to do |format|
      if @task.destroy
        format.html { redirect_to List.find(@task.list_id) }
        format.js   {}
      else
        redirect_to List.find(@task.list_id)
      end
    end
  end

  private
    def task_params
      params.require(:task).permit(:content, :list_id)
    end

end
