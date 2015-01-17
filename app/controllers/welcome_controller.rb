class WelcomeController < ApplicationController
  def index
  	projects = Projects.all
  end

  def show
  	project = Projects.find(params[:id])
  end
end
