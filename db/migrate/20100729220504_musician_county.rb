class MusicianCounty < ActiveRecord::Migration
  def self.up
    add_column :musicians, :county, :string
    add_column :memberships, :start, :date
    add_column :memberships, :end, :date
    add_column :memberships, :status_id, :integer
    add_column :memberships, :type_id, :integer
  end

  def self.down
    remove_column :musicians, :county
    remove_column :memberships, :start
    remove_column :memberships, :end
    remove_column :memberships, :status_id
    remove_column :memberships, :type_id
  end
end
