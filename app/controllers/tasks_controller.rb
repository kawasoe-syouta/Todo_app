class TasksController < ApplicationController
  before_action :authenticate_user!
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @task.user_id = current_user.id
    if @task.save
      redirect_to task_path(@task), notice: '登録に成功しました。'
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
    if @task.user != current_user
      redirect_to root_path, alert: '不正なアクセスです。'
    end
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task), notice: '更新に成功しました。'
    else
      render :edit
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_url
  end

  private
    def task_params
      params.require(:task).permit(:title, :message)
    end
end
