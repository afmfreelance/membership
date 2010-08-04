class AddIndices < ActiveRecord::Migration
  def self.up
    add_column :musicians, :delta, :boolean, :default => true, :null => false
    add_column :locals, :delta, :boolean, :default => true, :null => false
  end

  def self.down
    remove_column :musicians, :delta
    remove_column :locals, :delta
  end
end
