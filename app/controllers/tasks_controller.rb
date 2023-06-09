class TasksController < ApplicationController
    def index
        @tasks = Task.all
        @task = Task.new
    end

    def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        redirect_to tasks_path
    end

    def show
        @task = Task.find(params[:id]) unless params[:id] == 'new'
        @task ||= Task.new
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(task_params)
        if @task.save
            redirect_to tasks_path
        else
            render :new
        end
    end

    private

    def task_params
        params.require(:task).permit(:title, :details, :completed)
    end
end
