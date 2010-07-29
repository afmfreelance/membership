class LocalAddSortCol < ActiveRecord::Migration
  def self.up
    add_column :locals, :sort_num, :integer
    Local.all.each do |l|
      l.sort_num = l.number.split('-')[0]
      l.save
    end
    
  end

  def self.down
    remove_column :locals, :sort_num
  end
end
