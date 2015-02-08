class AddPiRelationship < ActiveRecord::Migration
  def change
  	add_reference :project_items, :project, index: true
  end
end
