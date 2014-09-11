class Hospital < ActiveRecord::Base
  has_many :patients, :as => :facilities_provider
  has_many :doctors, :as => :facilities_provider

  validates :name, presence: true

  # geocoded_by :full_street_address   # can also be an IP address
  # after_validation :geocode          # auto-fetch coordinates

  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address

end



#relationship_type :object, 
