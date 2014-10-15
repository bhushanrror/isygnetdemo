class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
    	t.string :title
    	t.text :body
    	t.string :feature_image_file_name
    	t.text :type
    	t.boolean :status
    	t.timestamps
    end
  end
end
