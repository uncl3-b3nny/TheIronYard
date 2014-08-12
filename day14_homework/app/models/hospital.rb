class Hospital < ActiveRecord::Base
  has_many :patients
end

#relationship_type :object, 
