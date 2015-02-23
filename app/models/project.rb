class Project < ActiveRecord::Base
	has_many :project_items
	enum project_type: {Drawing: 0, Painting: 1, Vector: 2}

	validates :project_title, presence: true
end
