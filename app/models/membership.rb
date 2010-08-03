class Membership < ActiveRecord::Base
  belongs_to :musician
  belongs_to :local
  belongs_to :status
  belongs_to :category
  
  validates_presence_of :local
end
