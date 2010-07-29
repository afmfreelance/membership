class PhoneExt < ActiveRecord::Migration
  def self.up
    add_column :musicians, :phone_cell_ext, :string
    add_column :musicians, :phone_home_ext, :string
    add_column :musicians, :phone_work_ext, :string
  end

  def self.down
    remove_column :musicians, :phone_cell_ext
    remove_column :musicians, :phone_home_ext
    remove_column :musicians, :phone_work_ext
  end
end
