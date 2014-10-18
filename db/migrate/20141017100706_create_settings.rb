class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
		t.string :settingkey
		t.string :settingvalue
      t.timestamps
    end
  end
end
