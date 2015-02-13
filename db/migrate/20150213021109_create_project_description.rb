class CreateProjectDescription < ActiveRecord::Migration
  def change
    create_table :project_descriptions do |t|
    	t.text :text_body
    	t.integer :sort_order
    	t.integer :description_type
    end
  end
end
