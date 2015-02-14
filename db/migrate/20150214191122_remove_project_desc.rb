class RemoveProjectDesc < ActiveRecord::Migration
  def change
  	drop_table :project_descriptions
  end
end
