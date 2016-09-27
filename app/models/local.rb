class Local < ActiveRecord::Base
  belongs_to :user
  has_many :livingrooms, dependent: :destroy
  has_many :products, dependent: :destroy
  validates :name, presence: true
end
