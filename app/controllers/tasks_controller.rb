class TasksController < ApplicationController
  before_action :set_task, only: [:destroy]

  # GET /tasks
  # GET /tasks.json
  def index
    @tasks = Task.all
    @task = Task.new
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # POST /tasks
  
  def create
    @task = Task.new(task_params)
      @task.save
      redirect_to root_path, notice: 'Task was successfully created.' 
  end

  # PATCH/PUT /tasks/1
  def update
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task.destroy
     redirect_to root_path, notice: 'Task was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:description)
    end
end
