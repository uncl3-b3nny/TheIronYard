require 'rails_helper'

RSpec.describe Patient, type: :model do

  it {should belong_to(:facilities_provider)}

  it "should return the full name of a user" do 

    patient = Patient.new(first_name: "David", last_name: "Chelimsky")
    expect(patient.full_name).to eq("David Chelimsky")
  end

  subject do
    patient = Patient.new({first_name: "David", last_name: "Chelimsky"
    })
  end

  # subjects must be defined outside of an if block!

  it "should return the full name of a user" do 
    expect(subject.full_name).to include("a")
    expect(subject.full_name).not_to include("z")
  end

  # it "should test a helper with multiple parameter inputs"

  # it "should test a validation"

end


