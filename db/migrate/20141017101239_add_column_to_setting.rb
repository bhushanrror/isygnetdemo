class AddColumnToSetting < ActiveRecord::Migration
  def change
  	add_column :settings, :settingkey,    :string
  	add_column :settings, :settingvalue,    :string
  end
end
