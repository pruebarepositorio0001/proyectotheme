class Profile < ActiveRecord::Base
  belongs_to :user
  def full_name
    self.name + " " + self.lastname + " " + self.mother_lastname 
  end
end
