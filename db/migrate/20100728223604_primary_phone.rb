class PrimaryPhone < ActiveRecord::Migration
  def self.up
    add_column :musicians, :primary_phone_choice, :integer
  end

  def self.down
    remove_column :musicians, :primary_phone_choice
  end
end
