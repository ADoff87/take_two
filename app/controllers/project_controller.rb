class ProjectController < ApplicationController
	#beforeaction filter?





	def index
		@project_groups = Project.order(:sort_order)
								 .group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
		
		puts @project_groups
	end

	def show
		id = params[:id]
		@project = Project.find(id)
	end

	private
end
