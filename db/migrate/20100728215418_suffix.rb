class Suffix < ActiveRecord::Migration
  def self.up
    add_column :musicians, :suffix, :string
    add_column :musicians, :stage_lastname, :string
    add_column :musicians, :stage_firstname, :string
    rename_column :musicians, :country_code, :country_id
  end

  def self.down
    remove_column :musicians, :suffix
    remove_column :musicians, :stage_lastname
    remove_column :musicians, :stage_firstname
    rename_column :musicians, :country_id, :country_code
  end
end
