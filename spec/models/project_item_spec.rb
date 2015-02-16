require 'rails_helper'

RSpec.describe ProjectItem, type: :model do
  context 'factory initialization' do
  	it 'has a valid default value' do
  		FactoryGirl.create(:project_item).should be_valid
  	end

  	it 'has a default value whre is_main_image is false' do
  		project_item = FactoryGirl.build(:project_item)
  		expect(project_item.is_main_image).to eq false
  	end


  end

  it 'has a thumb url with _thumb at end if main image'
  it 'has an image url that matches project item name'


  context 'of projects' do
  it 'has at least one main image in collection'
  it 'is a child of a project'
  end
end
