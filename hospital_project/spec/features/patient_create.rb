require 'rails_helper'

describe "create patient", type: :feature, js: true do 
  let!(:hospital){ FactoryGirl.create(:hospital) }
  let!(:patient){ FactoryGirl.create(:patient, facilities_provider: hospital) }

  it "should allow the creation of a patient" do
    # must log in first
    visit '/users/sign_in'
    hospital
    patient
    click_link 'Sign up'
    fill_in "Email", with: "test@example.com"
    fill_in "Password", with: "bassword14"
    fill_in "Password confirmation", with: "bassword14"
    click_button "Sign up"
    # expect(page).to have_content("Welcome! You have signed up successfully.")
    # expect(page).to have_content("Welcome to the network!")

    # expect(page).not_to have_content("Log In")
    # then run tests

    visit root_path
    #do i have to initialize a "fake" hospital to run the test with?
    #but while we're at it, lets build something with the factory!

    fill_in 'First name:', with: "Ben"
    fill_in 'Last name:', with: "Linville"
    fill_in 'Malady:', with: "To Short"
    fill_in 'Status:', with: "Waiting"
  
    expect(page).to have_content("")
    expect(page).to have_content("Welcome to the network!")

    expect(page).not_to have_content("Log In")
  end


end
