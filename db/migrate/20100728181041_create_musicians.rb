class CreateMusicians < ActiveRecord::Migration
  def self.up
    create_table :musicians do |t|
      t.integer :ssn
      t.date :birthdate
      t.string :firstname
      t.string :lastname
      t.string :mi
      t.string :email
      t.string :phone_home
      t.string :phone_cell
      t.string :phone_work
      t.string :address
      t.string :city
      t.integer :state_province_id
      t.string :postal_code
      t.integer :country_code

      t.timestamps
    end
  end

  def self.down
    drop_table :musicians
  end
end
