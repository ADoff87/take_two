class ProjectItem < ActiveRecord::Base
	belongs_to :project

	def get_image_url
		
		suffix = "_thumb" if is_main_image
		url = "../images/#{image_name}#{suffix}.jpg"

	end
end
