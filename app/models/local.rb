class Local < ActiveRecord::Base
  has_many :musicians, :through => :memberships
  has_many :memberships
  
  default_scope :order => 'sort_num ASC'
  cattr_reader :per_page
  @@per_page = 20
  
  def sort_num
    self.number.split('-')[0]
  end
end
