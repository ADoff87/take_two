require 'faker'

FactoryGirl.define do
	factory :project do |p|
		p.project_title {Faker::Name.name}
		p.project_type 0
	end

	factory :blank_project do |p|
		p.project_title nil
	end
end