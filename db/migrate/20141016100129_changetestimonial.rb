class Changetestimonial < ActiveRecord::Migration
  def up
  	remove_column :testimonials, :type
  	rename_column :testimonials, :body, :videourl
  end
end
