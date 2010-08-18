class Payment < ActiveRecord::Base
  belongs_to :payment_type
end
