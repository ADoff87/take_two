require 'faker'

FactoryGirl.define do
  factory :project_item do |pi|
    pi.image_name { Faker::Name.first_name }
    pi.is_main_image false
  end

  factory :main_project_item, parent: :project_item do |pi|
  	pi.is_main_image true
  end

end
