class TodosController < ApplicationController
	before_action :authenticate

	def index
		@todo = current_user.todos
	end
	
	def new
		@todo = Todo.new
	end

	def create
		if current_user.todos.create(todo_params)
			redirect_to root_path
		else
			render :new
		end
	end


	private

		def todo_params
			params.require(:todo).permit(:title)
		end
end
