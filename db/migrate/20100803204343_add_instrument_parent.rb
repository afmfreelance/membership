class AddInstrumentParent < ActiveRecord::Migration
  def self.up
    #add_column :instruments, :teaching_instrument, :integer
    add_column :instruments, :permalink, :string
  end

  def self.down
    #remove_column :instruments, :teaching_instrument
    remove_column :instruments, :permalink
  end
end
