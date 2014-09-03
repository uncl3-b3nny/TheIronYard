class Patient < ActiveRecord::Base

    def full_name
      puts self.first_name

      puts self.last_name
    "#{self.first_name.downcase.capitalize} #{self.last_name.downcase.capitalize}"
    end

belongs_to :facilities_provider, :polymorphic => true
has_many :doctors, :as => :healthcare_recipient
has_many :medications

validates :first_name, presence: true
validates :last_name, presence: true
validates :malady, presence: true
validates :gender, presence: true
# validates :date_of_birth, presence: true

  include Workflow
  workflow do

    state :waiting do
     event :check_up, transitions_to: :checked_up
     event :x_ray, transitions_to: :x_rayed
     event :get_surgery, transitions_to: :had_surgery
     event :discharge, transitions_to: :discharged
    end 
    
    state :checked_up do
     event :wait, transitions_to: :waiting
     event :x_ray, transitions_to: :x_rayed
     event :get_surgery, transitions_to: :had_surgery
     event :pay, transitions_to: :paid
    end

    state :x_rayed do
      event :wait, transitions_to: :waiting
      event :check_up, transitions_to: :checked_up
      event :get_surgery, transitions_to: :had_surgery
      event :pay, transitions_to: :paid
    end

    state :had_surgery do
      event :wait, transitions_to: :waiting
      event :check_up, transitions_to: :checked_up
      event :pay, transitions_to: :paid
    end

    state :paid do
      event :discharge, transitions_to: :discharged
    end
  end
end