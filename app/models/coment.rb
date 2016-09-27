class Coment < ActiveRecord::Base
  belongs_to :user
  belongs_to :livingroom
end
