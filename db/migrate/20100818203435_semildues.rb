class Semildues < ActiveRecord::Migration
  def self.up 
    add_column :locals, :dues_semiannual, :integer
  end

  def self.down
    remove_column :locals, :dues_semiannual

  end
end
