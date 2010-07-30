class Membership < ActiveRecord::Base
  belongs_to :musician
  belongs_to :local
end
