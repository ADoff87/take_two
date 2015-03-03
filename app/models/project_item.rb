class ProjectItem < ActiveRecord::Base
	belongs_to :project
	@@image_path = '../images/'

	def get_thumb_image_url
		suffix = "_thumb" if is_thumb_image
		url = "#{@@image_path}#{image_name}#{suffix}.jpg"

	end

	def get_image_url
		url = "#{@@image_path}#{image_name}.jpg"
	end
end
