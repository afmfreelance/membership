class Local < ActiveRecord::Base
  default_scope :order => 'sort_num ASC'
  cattr_reader :per_page
  @@per_page = 20
  
  
  def sort_num
    self.number.split('-')[0]
  end
end
