class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
		t.text :title
		t.text :description
		t.text :duration
		t.decimal :fees, precision: 8, scale: 2
		t.string :feature_image_file_name
		t.boolean :status
		t.references :batch, index: true
      	t.timestamps
    end
  end
end
