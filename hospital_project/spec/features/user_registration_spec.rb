require 'rails_helper'

describe "user registration", type: :feature, js: true do 
  it "should allow user registration" do
  visit '/'
  click 'sign up'
  fill_in "email", with: "test@example.com"
  fill_in "Last name", with: "Ben"
  fill_in "Last name", with: "Linville"
  fill_in "Password", with: "bassword"
  fill_in "Password", with: "bassword"
  click_button "Sign up"

  expect(page).to have_content("welcome! You have signed up successfully.")
  expect(page).to have_content("Ben")
  expect(page).to have_content("Linville")

  expect(page).not_to have_content("Log In")
  end

end

# it "should test a feature" 
# test min 5 features
