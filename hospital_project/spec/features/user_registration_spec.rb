require 'rails_helper'

describe "user registration", type: :feature, js: true do 
  it "should allow user registration" do
  visit '/users/sign_in'
  click_link 'Sign up'
  fill_in "Email", with: "test@example.com"
  fill_in "Password", with: "bassword14"
  fill_in "Password confirmation", with: "bassword14"
  click_button "Sign up"

  expect(page).to have_content("Welcome! You have signed up successfully.")
  expect(page).to have_content("Welcome to the network!")

  expect(page).not_to have_content("Log In")
  end

end

# it "should test a feature" 
# test min 5 features
