class Hospital < ActiveRecord::Base
  has_many :patients, :as => :facilities_provider
  has_many :doctors, :as => :facilities_provider

  validates :name, presence: true
end

#relationship_type :object, 
