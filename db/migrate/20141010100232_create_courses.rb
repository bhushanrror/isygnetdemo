class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
		t.text :title
		t.text :description
		t.text :duration
		t.decimal :fees, precision: 8, scale: 2		
		t.boolean :status
		t.string :pic_file_name
		t.string :pic_content_type
 		t.integer :pic_file_size
 		t.datetime :pic_updated_at

      	t.timestamps
    end
  end
end
