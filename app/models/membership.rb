class Membership < ActiveRecord::Base
  belongs_to :musician
  belongs_to :local
  belongs_to :status
  belongs_to :category
  before_validation :set_start_quarter
  validates_presence_of :local

  
  def set_start_quarter   
    self.start_quarter = Membership.quarter(start.strftime('%m')) if start_quarter.blank?
    self.start_year = start.strftime('%Y').to_i if start_year.blank?
  end
  
  def self.quarter(month)
  quarter = case month.to_i
    when 1..3 then 1
    when 4..6 then 2
    when 7..9 then 3
    else 4
  end  
  end
end
