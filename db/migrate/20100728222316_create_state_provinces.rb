class CreateStateProvinces < ActiveRecord::Migration
  def self.up
    create_table :state_provinces do |t|
      t.string :name
      t.string :abbreviation
      t.integer :country_id

      t.timestamps
    end
  end

  def self.down
    drop_table :state_provinces
  end
end
