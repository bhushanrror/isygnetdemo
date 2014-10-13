class CreateRecruitmentPartners < ActiveRecord::Migration
  def change
    create_table :recruitment_partners do |t|
    	t.string :title
    	t.text :description
    	t.string :feature_image
    	t.boolean :status
      t.timestamps
    end
  end
end
