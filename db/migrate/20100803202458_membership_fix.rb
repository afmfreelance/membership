class MembershipFix < ActiveRecord::Migration
  def self.up
    rename_column :memberships, :type_id, :category_id
  end

  def self.down
    rename_column :memberships, :category_id, :type_id
  end
end
