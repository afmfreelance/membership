class Membership < ActiveRecord::Base
  belongs_to :musician
  belongs_to :local
  
  validates_presence_of :locals
end
