class UpdateProjectWithHtmlField < ActiveRecord::Migration
  def change
	change_table :projects do |t|
		t.remove :main_description
		t.text :project_markdown
	end
end
