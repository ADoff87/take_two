class ProjectController < ApplicationController
	before_action :authenticate_admin, only:[:edit,:create]
	before_action :find_project, only:[:edit,:show]

	#return json only, state handled in knockout
	def edit
		puts @project.to_json
		render json: @project #include collections using jBuilder
	end
	#return json only, state handled in knockout
	def create

	end


	def index
		@project_groups = Project.order(:sort_order)
								 .group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
		
		puts @project_groups
	end

	def show

	end

	private
	def authenticate_admin
		#get cookie for admin

		#redirect to not_authorized page? Or Login?
	end

	def find_project
		id = params[:id]
		@project = Project.find(id)
	end
end
