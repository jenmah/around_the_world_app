class CreatePhotographs < ActiveRecord::Migration
  def change
    create_table :photographs do |t|
    	t.string :name
    	t.float :latitude
    	t.float :longitude
    	t.string :image_path
    	
      t.timestamps null: false
    end
  end
end
