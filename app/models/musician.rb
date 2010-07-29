class Musician < ActiveRecord::Base
  belongs_to :country
  belongs_to :state_province
  
  before_validation :phones_strip, :names_format
  cattr_reader :per_page
  @@per_page = 20
  
  validates_presence_of :firstname, :lastname, :birthdate, :email, :address, :city, :state_province_id, :postal_code, :country_id, :primary_phone_choice
  validate :at_least_one_phone_entered, :primary_phone_exists
  
  def phone #auto-display primary phone number as virtual field
    phones = [self.phone_cell,self.phone_home,self.phone_work]   
    phones[self.primary_phone_choice.to_i] if self.primary_phone_choice
  end
  def phone_ext #same as phone
    exts = [self.phone_cell_ext,self.phone_home_ext,self.phone_work_ext]   
    exts[self.primary_phone_choice.to_i] if self.primary_phone_choice
  end

  def names_format
    self.firstname = firstname.titleize
    self.lastname = lastname.titleize
    self.city = city.titleize
  end
  
  def phones_strip
    #ph_cell = phone_cell.downcase.gsub(/[^0-9x]/, "") unless phone_cell.nil?
    unless phone_cell.blank?
      ph_c = strip_and_split_ext(phone_cell)
      self.phone_cell = ph_c[0]
      self.phone_cell_ext = ph_c[1] if ph_c[1]
    end
    
    unless phone_home.blank?
      ph_h = strip_and_split_ext(phone_home)
      self.phone_home = ph_h[0]
      self.phone_home_ext = ph_h[1] if ph_h[1]
    end
    
    unless phone_work.blank?  
      ph_w = strip_and_split_ext(phone_work)
      self.phone_work = ph_w[0]
      self.phone_work_ext = ph_w[1] if ph_w[1]
    end
  end
 
  
  def primary_phone_exists
    unless self.phone_cell.blank? && self.phone_home.blank? && self.phone_work.blank?
      #if nothing is filled out we don't worry about this problem, they need a phone # first anyways
      phones = [self.phone_cell,self.phone_home,self.phone_work] 
      if phones[self.primary_phone_choice.to_i].blank?
        
        #find the phone numbers that were entered
        used_phones = Array.new
        phones.each_with_index do |phone,index|
          used_phones << index unless phone.blank?
        end
        
        #if only one phone number was entered, we use that one by default
        if used_phones.size == 1
          self.primary_phone_choice = used_phones.first
        else
          #otherwise, force the user to choose
          errors.add_to_base "Please choose a primary phone number"
        end    
      end
    end
  end
  
  def at_least_one_phone_entered
    if phone_cell.blank? && phone_home.blank? && phone_work.blank?
      errors.add_to_base "At least one phone number number must be entered"
    end
  end  
  
  private
  def strip_and_split_ext(p)
    #removes all non-standard phone characters, and if there's an extension it puts it into an array so they can be written to two diff. fields
    unless p.blank?
      ph_arr = p.downcase.gsub(/[^0-9x]/, "").split('x') 
      phone = ph_arr[0].strip
      ext = ph_arr[1].strip if ph_arr[1]
      arr = Array.new
      arr << phone
      arr << ext
      arr
    end
  end
  
end
