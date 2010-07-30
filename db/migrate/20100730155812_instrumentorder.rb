class Instrumentorder < ActiveRecord::Migration
  def self.up
    add_column :musician_instruments, :sort, :integer
  end

  def self.down
    remove_column :musician_instruments, :sort
  end
end
