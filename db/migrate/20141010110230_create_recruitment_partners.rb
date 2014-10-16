class CreateRecruitmentPartners < ActiveRecord::Migration
  def change
    create_table :recruitment_partners do |t|
    	t.string :title
    	t.text :description
    	t.boolean :status
    	t.string :pic_file_name
		t.string :pic_content_type
 		t.integer :pic_file_size
 		t.datetime :pic_updated_at
      t.timestamps
    end
  end
end
