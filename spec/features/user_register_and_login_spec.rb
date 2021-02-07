require 'rails_helper'

RSpec.describe "As a visitor" do
  describe "When I click on the 'register' link on the homepage" do
    it "takes me to the user registration page" do
      visit "/"
      click_link "Register as a New User"
      expect(current_path).to eq("/register")
    end

    it "lets me complete a new registration form" do
      visit "/register"
        fill_in :name, with: "Jane Jewelry Maker"
        fill_in :email_address, with: "jane@gmail.com"
        fill_in :business_name, with: "Jane's Jewels"
        fill_in :password, with: "secret_password"
        fill_in :password_confirmation, with: "secret_password"

        click_button "Complete Registration"
        expect(current_path).to eq("/profile")
        within ".success-flash" do
          expect(page).to have_content("You are now registered and logged in!")
        end
      end
    end
  end


# RSpec.describe "As a visitor" do
#   describe "who is a default user and visits the log in page" do
#   it "has a field to enter my email address and password" do
#     user = User.create!(name: "Josh Tukman",
#                           address: "756 Main St",
#                           city: "Denver",
#                           state: "Colorado",
#                           zip: "80209",
#                           email: "josh.t@gmail.com",
#                           password: "secret_password",
#                           password_confirmation: "secret_password",
#                           role: 0)
#     visit '/login'
#       fill_in :email, with: "josh.t@gmail.com"
#       fill_in :password, with: "secret_password"
#       click_button "Submit"
#       expect(current_path).to eq("/profile")
#       within ".success-flash" do
#         expect(page).to have_content("You are logged in!")
#       end
#     end
#   end
