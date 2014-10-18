class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
    	t.string :title
    	t.text :videourl
    	t.boolean :status
        t.string :pic_file_name
        t.string :pic_content_type
        t.integer :pic_file_size
        t.datetime :pic_updated_at
    	t.timestamps
    end
  end
end
