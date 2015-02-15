class RemoveSecondaryDesc < ActiveRecord::Migration
  def change
  	change_table :projects do |t|
  		t.remove :secondary_description
  	end
  end
end
