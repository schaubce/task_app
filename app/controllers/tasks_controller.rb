class TasksController < ApplicationController
  def index
     @tasks = @user.tasks
  end

  def show
    @tasks= current_user.tasks 
  end

  def new
    @task = Task.new
  end

  def create      
    @task = current_user.tasks.build(params[:task])
    if @task.save
      flash[:success] = "Task Created"
      redirect_to tasks_url
    else
      render new_task
    end
  end

  def edit
    @task = Task.find params[:id]
  end

  def update
  end
  
  def destroy
  end
end
