class CountryAbbr < ActiveRecord::Migration
  def self.up
    add_column :countries, :abbreviation, :string 
  end

  def self.down
    remove_column :countries, :abbreviation
  end
end
