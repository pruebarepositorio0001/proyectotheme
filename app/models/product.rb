class Product < ActiveRecord::Base
  belongs_to :local
    validates :name, presence: true
end
