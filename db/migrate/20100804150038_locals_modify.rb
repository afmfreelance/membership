class LocalsModify < ActiveRecord::Migration
  def self.up
    rename_column :locals, :state_province, :state_province_id
    rename_column :locals, :country_code, :country_id
    rename_column :locals, :website, :url
    add_column :locals, :fax_number, :string
    change_column :locals, :state_province_id, :integer
  end

  def self.down
    rename_column :locals, :state_province_id, :state_province
    rename_column :locals, :country_id, :country_code
    rename_column :locals, :url, :website
    remove_column :locals, :fax_number
    change_column :locals, :state_province_id, :string
  end
end
