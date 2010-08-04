class Intuneid < ActiveRecord::Migration
  def self.up
    add_column :musicians, :intune_id, :string
    add_column :musicians, :address2, :string
    add_column :musicians, :state_province_temp, :string
  end

  def self.down
    remove_column :musicians, :intune_id
    remove_column :musicians, :address2
    remove_column :musicians, :state_province_temp
  end
end
