class Project < ActiveRecord::Base
	has_many :project_items
	enum project_type: {Drawing: 0, Painting: 1, Vector: 2}

	validates :project_title, presence: true

	#this doesn't work in strong parameters
	accepts_nested_attributes_for :project_items

	def thumbnail_image
		project_items.where(is_thumb_image: true).first.image_url
	end

	def project_view_items
		project_items.where(is_thumb_image: false)
	end
end