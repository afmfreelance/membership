class Instrument < ActiveRecord::Base
  has_many :musicians, :through => :musician_instruments
  has_many :musician_instruments
  
  default_scope :order => 'name ASC'
end
