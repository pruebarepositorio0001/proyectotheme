class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
has_many :locals, dependent: :destroy         
has_many :reserves, dependent: :destroy
has_many :events, dependent: :destroy
has_one :profile
enum role: [:user, :operator, :cashier, :admin]


after_initialize :set_default_role
def set_default_role
  self.role ||= :user
end
def default_profile
  if self.profile.nil?
    profile = Profile.new
    profile.user = self
    profile.save
    self.save      
  end
  self.profile
end
def friendly_name
  if self.default_profile.lastname.nil?
    self.email
  else
    self.profile.full_name
  end
end
end
