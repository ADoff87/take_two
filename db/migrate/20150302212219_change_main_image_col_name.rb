class ChangeMainImageColName < ActiveRecord::Migration
  def change
  		rename_column :project_items,:is_main_image, :is_thumb_image
  end
end
