class DataMain < ApplicationRecord

    validates :title, presence: true
    validates :location, presence: true
    validates :era, presence: true
    validates :long, presence: true
    validates :lat, presence: true
    validates :source, presence: true

end
