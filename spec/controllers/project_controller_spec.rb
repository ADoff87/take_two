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
					expect(:projects).not_to be(nil)
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

			context 'get new project' do
				it 'gets project json of new project' do
					json = FactoryGirl.create(:blank_project).to_json
					
					get :new

					expect(response).to be_success
					expect(response.body).to eq(json)

=begin
										json = JSON.parse(response.body)
					expect(json['project']).not_to eq(nil)
=end
					
				end
			end


		end

		context 'Unsuccesful methods' do
			it "unsuccessfully gets project" do
				get :show, id: 2
				expect(@project).to eq(nil)
			end
			it "unsuccesful project id redirects to not found page" do
				get :show, id: 2
				response.should render_template :notfound
			end
		end
		

	end

	context 'Post methods' do
	end

	context 'Update methods' do
	end
end
