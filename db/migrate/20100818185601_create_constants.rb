class CreateConstants < ActiveRecord::Migration
  def self.up
    create_table :constants do |t|
      t.string :name
      t.string :thevalue
      t.string :datatype
      t.timestamps
    end
  end

  def self.down
    drop_table :constants
  end
end
