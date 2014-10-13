class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
    	t.datetime :start_time
    	t.integer :student
    	t.integer :duration
    	t.boolean :status
      t.timestamps
    end
  end
end
