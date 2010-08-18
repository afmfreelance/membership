class Annualdues < ActiveRecord::Migration
  def self.up
    add_column :locals, :dues_annual, :integer
    add_column :locals, :dues_quarterly, :integer
  end

  def self.down
    remove_column :locals, :dues_annual
    remove_column :locals, :dues_quarterly
  end
end
