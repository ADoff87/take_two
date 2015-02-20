require 'rails_helper'

RSpec.describe ProjectItem, type: :model do
  context 'factory initialization' do
  	it 'has a valid default value' do
  		FactoryGirl.create(:project_item).should be_valid
  	end

  	it 'has a default value where is_main_image is false' do
  		project_item = FactoryGirl.build(:project_item)
  		expect(project_item.is_main_image).to eq false
  	end


  end


  context 'instance methods' do
    it 'has a thumb url with _thumb at end if main image' do
    		pi = FactoryGirl.build(:main_project_item)
    		url = pi.get_thumb_image_url
    		expect(url.rindex('_thumb')).not_to eq(nil)
    end

    it 'has an image url that matches project item name' do
    	pi = FactoryGirl.build(:project_item)
    	url = pi.get_image_url
    	expect(url).to eq("../images/#{pi.image_name}.jpg")
    end
  end


  context 'of projects' do
  	#TODO
  it 'has at least one main image in collection'
  it 'is a child of a project'
  end
end
