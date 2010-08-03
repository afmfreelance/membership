class Category < ActiveRecord::Base
  has_many :memberships
end
