class SessionsController < ApplicationController

	def new
	end

	def create
		session[:current_zip] = params[:session][:current_zip]
		session[:current_demand] = params[:session][:current_demand]
		session[:current_usage] = params[:session][:current_usage]
		session[:current_date] = params[:session][:current_date]
		redirect_to tool_path
	end

	def destroy
	end

end
