class CreateLocals < ActiveRecord::Migration
  def self.up
    create_table :locals do |t|
      t.string :name
      t.string :number
      t.date :chartered
      t.text :jurisdiction
      t.string :website
      t.string :email
      t.string :address
      t.string :city
      t.string :state_province
      t.string :postal_code
      t.integer :country_code
      t.string :phone_primary
      t.string :phone2
      t.string :phone3
      t.string :email
      t.string :website
      t.string :city_state_title

      t.timestamps
    end
  end

  def self.down
    drop_table :locals
  end
end
