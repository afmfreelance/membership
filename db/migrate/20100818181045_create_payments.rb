class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.integer :amount
      t.integer :payment_type_id
      t.integer :musician_id
      t.integer :local_id

      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
