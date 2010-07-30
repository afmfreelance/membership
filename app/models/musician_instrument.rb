class MusicianInstrument < ActiveRecord::Base
  belongs_to :musician
  belongs_to :instrument
  
  default_scope :order => 'sort ASC'
end
