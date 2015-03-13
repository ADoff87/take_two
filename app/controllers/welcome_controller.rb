class WelcomeController < ApplicationController
  def index
  	@project_groups = Project.order(:sort_order)
								 .group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
  end

  def about

  end

  def notfound

  end
end
