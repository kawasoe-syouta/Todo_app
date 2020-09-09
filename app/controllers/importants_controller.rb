class ImportantsController < ApplicationController
  def create
    @important = current_user.importants.create(task_id: params[:task_id])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @task = Task.find(params[:task_id])
    @important = current_user.importants.find_by(task_id: @task.id)
    @important.destroy
    redirect_back(fallback_location: root_path)
  end
end
