class SessionsController < ApplicationController

	def new
	end

	def create
		session[:zip] = params[:session][:current_zip]
		session[:demand] = params[:session][:current_demand]
		session[:usage] = params[:session][:current_usage]
		session[:date] = params[:session][:current_date]
		session[:phases] = params[:session][:current_phases]

		redirect_to tool_path
	end

	def destroy
	end

end
