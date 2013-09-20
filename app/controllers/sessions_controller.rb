class SessionsController < ApplicationController

	def new
	end

	def create
		session[:current_zip] = params[:session][:current_zip]
		redirect_to tool_path
		
	end

	def destroy
	end

end
