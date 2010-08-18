class Local < ActiveRecord::Base
  money :dues_annual
  money :dues_semiannual
  money :dues_quarterly
  money :lif
  has_many :musicians, :through => :memberships
  has_many :memberships
  
  belongs_to :state_province
  belongs_to :country
  
  before_validation :phone_and_local_strip
  named_scope :complete, :conditions => 'lif_in_cents IS NOT NULL AND dues_annual_in_cents IS NOT NULL'
  
  default_scope :order => 'sort_num ASC'
  cattr_reader :per_page
  @@per_page = 20
  
  validates_presence_of :name, :number, :email, :address, :city, :state_province_id, :postal_code, :country_id, :dues_annual, :lif
  validates_uniqueness_of :name, :number
  
  
  define_index do
   indexes :name, city_state_title, number, city, email
   indexes [state_province.name, state_province.abbreviation], :as => :state_province
   indexes [country.name, country.abbreviation], :as => :country
   has "CAST(SUBSTRING_INDEX(`number`, '-', 1) as UNSIGNED)", :as => :sort_num, :type => :integer
   #group_by :sort_num
   set_property :delta => true
  end
  
  def to_param #use local num in route resources rather than id
    self.number
  end
  
  def phone
    self.phone_primary
  end
  
  def short_name
    if self.city_state_title
      self.number + ": " + self.city_state_title
    else
      self.number
    end
  end
  
  def sort_num
    self.number.split('-')[0]
  end
  
  def phone_and_local_strip
    self.phone_primary = phone_primary.downcase.gsub(/[^0-9x]/, '')
    self.fax_number = fax_number.downcase.gsub(/[^0-9x]/, '')
    self.number = number.gsub(/[^0-9\-]/, '')
  end
  
  def url=(value)
     unless value =~ /https?:\/\/.*/ || value.blank?
       write_attribute :url, "http://" + value.to_s
     else
       write_attribute :url, value
     end
  end
  def full_name
     [first_name, last_name].join(' ')
  end

  def full_name=(name)
     split = name.split(' ', 2)
     self.first_name = split.first
     self.last_name = split.last
  end
  
end
