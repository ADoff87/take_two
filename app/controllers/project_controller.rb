class ProjectController < ApplicationController
	before_action :authenticate_admin, only:[:edit,:create,:update,:delete,:new]
	before_action :find_project, only:[:edit,:show, :update]

#admin resources
=begin
	def edit
		render_to_string(formats: 'json')
	end

	def new
		@project = Project.new
		@project_types = Project.project_types
		render_to_string(formats: 'json')
	end

	#return json only, state handled in knockout
	def create
		@project = Project.new(project_params)
		
		if @project.save
			render json: id: @template.id, status: :created
		else
			render json: @project.errors, status: :unprocessable_entity
		end
	end


	def update
		if @project.update(project_params) 
			render status: 'updated'
		else
			render json: @project.errors, status: :unprocessable_entity
		end
	end

	def delete

	end
=end



#public methods
	def show
		
	end

	def index
		@project_groups = Project.order(:sort_order)
								 .group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
		
		puts @project_groups
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

	def project_params
		params[:project]
	end
end
