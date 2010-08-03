class Local < ActiveRecord::Base
  has_many :musicians, :through => :memberships
  has_many :memberships
  
  default_scope :order => 'sort_num ASC'
  cattr_reader :per_page
  @@per_page = 20
  
  def short_name
    self.number 
  end
  
  def sort_num
    self.number.split('-')[0]
  end
  
  def url=(value)
     unless value =~ /https?:\/\/.*/ || value.blank?
       write_attribute :url, "http://" + value.to_s
     else
       write_attribute :url, value
     end
   end
end
