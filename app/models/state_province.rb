class StateProvince < ActiveRecord::Base
  belongs_to :country
  has_many :locals
  has_many :musicians
end
