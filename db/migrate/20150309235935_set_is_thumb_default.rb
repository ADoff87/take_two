class SetIsThumbDefault < ActiveRecord::Migration
  def change
  	change_column_default :project_items, :is_thumb_image, false
  end
end
