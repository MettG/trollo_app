class ListsController < ApplicationController
	before_action :set_list_task, only: [:move_up]
  def index
  end

  def show
  end

  def new
	end
	
	def move_up
		@list.move_up_task(@task)
		puts "Task moved!"
		redirect_to boards_path
	end

  def edit
	end
	private
		def set_list_task
			@list = List.find(params[:list_id])
			@task = Task.find(params[:task_id])
		end
end
