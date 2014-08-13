class Doctor < ActiveRecord::Base
  belongs_to :facilities_provider, :polymorphic => true
  # Why doesn't this just read belongs_to_many :facilities_providers
  #  and has_many :patients as :healthcare_provider
  belongs_to :healthcare_recipient, :polymorphic => true
end
