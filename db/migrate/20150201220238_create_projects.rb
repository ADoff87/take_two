class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
	  t.string :project_title
	  t.string :main_description
	  t.string :secondary_description
	  t.integer :sort_order

	  t.column :project_type, :integer, default:0	

      t.timestamps
    end
  end
end
