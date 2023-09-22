class DataMain < ApplicationRecord

    validates :title, presence: true
    validates :location, presence: true
    validates :era, presence: true
    validates :long, presence: true
    validates :lat, presence: true
    validates :source, presence: true
    validates :opt, presence: true
    # validates :creator_name, presence: true
    # validates :creator_email, presence: true

    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "era", "id", "lat", "location", "long", "opt", "source", "status", "title", "updated_at"]
        #["location", "title"]
    end
    
end
