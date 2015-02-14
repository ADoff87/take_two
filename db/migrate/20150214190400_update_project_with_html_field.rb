class UpdateProjectWithHtmlField < ActiveRecord::Migration
  def change
	change_table :projects do |t|
		t.remove :main_description, :secondary_desrciption
		t.text :project_markdown
	end
  end
end
