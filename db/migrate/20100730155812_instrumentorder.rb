class Instrumentorder < ActiveRecord::Migration
  def self.up
    add_column :musician_instruments, :order, :integer
  end

  def self.down
    remove_column :musician_instruments, :order
  end
end
