require_dependency 'internal/application_controller'

module Internal
  class TasksController < ApplicationController
    before_action :set_task, only: [:edit, :update, :destroy]
    def index
      @tasks = current_account.tasks
    end

    def new
      @task = current_account.tasks.new
    end

    def create
      @task = current_account.tasks.new(set_params)
      
      if @task.save
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new 
      end
    end

    def edit
    end

    def update
      if @task.update(set_params)
        flash[:success] = t :success
        redirect_to action: :index
      else
        render action: :new 
      end
    end

    def destroy
      @task.destroy
      
      flash[:success] = t :success
      redirect_to action: :index
    end

    private

    def set_task
      @task = current_account.tasks.find(params[:id])
    end

    def set_params
      params.require(:task).permit(:title, :description, :due, :situation, :progress, :priority)
    end


  end
end