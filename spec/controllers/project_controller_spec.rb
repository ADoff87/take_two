require 'rails_helper'

RSpec.describe ProjectController, type: :controller do
	context 'Get methods' do
		context 'Successful methods' do 
			context 'get all projects' do
				it 'is successful when we get all Projects' do
					ps = FactoryGirl.create_list(:project,10)

					gPs = ps.group_by(&:project_type)
								 .map do |p_type, project|
									{p_type: p_type, projects: project}
								 end 
					get :index
					expect(:projects).to be([ps])
				end
				it 'render index template' do
					get :index
					response.should render_template :index
				end
			end

			context 'get specific project' do
				it 'gets item by Id'  do
					p = FactoryGirl.create(:project)
					id = p.id
					get :show, id: id
					expect(:project).to eq(p)
				end
				it 'redirects to show page' do
					get :show, id: FactoryGirl.create(:project)
					response.should render_template :show
				end
			end
		end

		context 'Unsuccesful methods' do
			it "unsuccessfully gets project"
			it "unsuccesful project redirects to 404 page"
		end
		

	end

	context 'Post methods' do
	end

	context 'Update methods' do
	end
end
