require 'rails_helper'

RSpec.describe User, :type => :model do

  it "should return the full name of a user" do 

    chelimsky = User.new(first_name: "David", last_name: "Chelimsky")

    # expect(User.full_name).to eq([chelimsky, lindeman])
    # this calls the class method

    expect(chelimsky.full_name).to eq("David Chelimsky")
  end

  # it "should test a helper with multiple parameter inputs"

end

# why do they use an exclamation point
# Assuming i am NOT doing TDD, at what point in the development process should I write my tests? everytime I write a function for a model should I write the corresponding test?
#  dif between =
