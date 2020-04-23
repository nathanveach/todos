class TodosController < ApplicationController
	before_action :authenticate

	def index
		@todo = Todo.where(email: session[:current_email])
	end
	
	def new
		@todo = Todo.new
	end

	def create
		@todo = Todo.new(todo_params.merge(email: session[:current_email]))
		if @todo.save
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
