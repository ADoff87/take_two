class ProjectController < ApplicationController
	before_action :authenticate_admin, only:[:edit,:create,:update,:delete,:new]
	before_action :find_project, only:[:edit,:show,:delete]

#admin resources

	def edit
	    @project_types = Project.project_types
		render_to_string(formats: 'json')
	end

	def new
		@project = Project.new

		render_to_string(formats: 'json')
	end

	def create
		@project = Project.new(project_params)
		
		if @project.save
			render json: {id: @project.id, status: :created}
		else
			render json: {errors: @project.errors, status: :unprocessable_entity}
		end
	end



	def update
		debugger

		if @project.update(project_params) 
			render status: 'updated'
		else
			render json: @project.errors, status: :unprocessable_entity
		end
	end

	def delete
		
	end

#public methods
	def show
		
	end

	def index
		@project_groups = Project.order(:sort_order)
								 .group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
	end

	private
	def authenticate_admin
		#get cookie for admin

		#redirect to not_authorized page? Or Login?
	end

	def find_project
		id = params[:id]
		@project = Project.find_by_id id

		respond_to do |format|
			format.html {render('welcome/notfound')}
			format.json {render json: {error: "not-found"}.to_json, status: 404}
		end if @project.nil?
	end

	def project_params
		params[:project]
	end
end
