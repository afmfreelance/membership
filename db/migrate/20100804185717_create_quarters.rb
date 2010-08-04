class CreateQuarters < ActiveRecord::Migration
  def self.up
    create_table :quarters do |t|
      t.integer :quarter
      t.integer :start_month
      t.integer :start_day
      t.integer :end_month
      t.integer :end_day
      t.string :title

      t.timestamps
      
      
    end
  end

  def self.down
    drop_table :quarters
  end
end
