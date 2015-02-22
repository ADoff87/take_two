class AdminController < ApplicationController
	before_action :verifyAdmin

	def index
		@isAdmin = true;
		@project_groups = Project.order(:sort_order)
								 .group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
		render 'project/index'
	end

	def new

	end

	def edit
		@id = params[:id]
	end

	private 

	def verifyAdmin

	end
end
