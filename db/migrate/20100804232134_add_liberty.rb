class AddLiberty < ActiveRecord::Migration
  def self.up
    add_column :musicians, :at_liberty, :integer, :default => 1
  end

  def self.down
    remove_column :musicians, :at_liberty
  end
end
