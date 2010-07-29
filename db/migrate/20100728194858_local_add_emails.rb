class LocalAddEmails < ActiveRecord::Migration
  def self.up
    add_column :locals, :email2, :string
    add_column :locals, :email3, :string
  end

  def self.down
    remove_column :locals, :email2
    remove_column :locals, :email3
  end
end
