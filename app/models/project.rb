class Project < ActiveRecord::Base
	has_many :project_items
	enum project_type: {drawing: 0, painting: 1, illustrated: 2, finger_paint: 3}
end
