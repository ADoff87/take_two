class Project < ActiveRecord::Base
	has_many :project_items
	enum project_type: {drawing: 0, painting: 1, vector: 2}

	validates :project_title, presence: true
end
