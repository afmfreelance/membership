class LocalIfs < ActiveRecord::Migration
  def self.up
    add_column :locals, :lif, :integer
    
    add_column :musicians, :title_id, :integer
    add_column :musicians, :mothers_maiden_name, :string
    add_column :musicians, :url, :string
    add_column :musicians, :email_confidential, :integer, :default => 0
    add_column :musicians, :phone_confidential, :integer, :default => 0
    add_column :musicians, :address_confidential, :integer, :default => 0
    add_column :musicians, :notes, :text
    add_column :musicians, :im_online, :integer, :default => 0
    
    add_column :statuses, :sort, :integer
    add_column :categories, :sort, :integer
    
    create_table :titles do |t|
      t.string :title
      t.timestamps
    end
  end

  def self.down
    remove_column :locals, :lif
    
    remove_column :musicians, :title_id
    remove_column :musicians, :mothers_maiden_name
    remove_column :musicians, :url
    remove_column :musicians, :email_confidential
    remove_column :musicians, :phone_confidential
    remove_column :musicians, :address_confidential
    remove_column :musicians, :notes
    remove_column :musicians, :im_online
    
    remove_column :statuses, :sort
    remove_column :categories, :sort
    
    drop_table :titles
  end
end
