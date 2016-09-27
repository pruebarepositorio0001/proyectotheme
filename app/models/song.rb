class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :language
  belongs_to :gender
end
