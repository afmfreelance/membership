class Country < ActiveRecord::Base
  has_many :musicians
  has_many :locals
  has_many :state_provinces
end
