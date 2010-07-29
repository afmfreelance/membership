class StateProvince < ActiveRecord::Base
  belongs_to :country
  has_many :musicians
end
