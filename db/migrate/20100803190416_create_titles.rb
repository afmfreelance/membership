class CreateTitles < ActiveRecord::Migration
  def self.up
    rename_column :titles, :title, :name
  end

  def self.down
    rename_column :titles, :name, :title
  end
end
