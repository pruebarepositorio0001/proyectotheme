class Language < ActiveRecord::Base
    has_many :songs, depedent: :destroy
    validates :name, presence: true
end
