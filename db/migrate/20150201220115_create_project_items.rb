class CreateProjectItems < ActiveRecord::Migration
  def change
    create_table :project_items do |t|
	  t.string :image_url
	  t.string :image_name
	  t.string :image_caption
	  t.boolean :is_main_image
		
      t.timestamps
    end
  end
end
