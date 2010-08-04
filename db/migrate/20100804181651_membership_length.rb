class MembershipLength < ActiveRecord::Migration
  def self.up
    remove_column :memberships, :end
    
    add_column :memberships, :start_year, :integer
    add_column :memberships, :start_quarter, :integer
    add_column :memberships, :finish_year, :integer
    add_column :memberships, :finish_quarter, :integer
  end

  def self.down
    add_column :memberships, :end, :date
    
    remove_column :memberships, :start_year, :integer
    remove_column :memberships, :start_quarter, :integer
    remove_column :memberships, :finish_year, :integer
    remove_column :memberships, :finish_quarter, :integer
  end
end
