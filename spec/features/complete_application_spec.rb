require 'rails_helper'

RSpec.describe "As a logged in user" do
  describe "When I visit an application" do
    user = User.create(name: "Krista Stadler",
                       email_address: "user@gmail.com",
                       business_name: "Business",
                       password: "secret_password",
                       password_confirmation: "secret_password")


    event = Event.create(name: "Handcrafted Holiday Market")
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)
    it "allows me to fill out the application" do
      visit "applications/#{event.id}/#{user.id}"

      fill_in :website, with: "website name"
      fill_in :facebook_link, with: "facebook link"
      fill_in :instagram_link, with: "instagram link"
      fill_in :short_description, with: "this is my short description"
      choose_button "fiber_arts"
      check "I am not an MLM vendor"
      fill_in :description, with: "This is a longer description"
      choose_button "true"
      fill_in :best_gift, with: "This is my best gift!"
      fill_in :price_range, with: "These are prices"
      choose_button "six_foot_table"
      choose_button "I am a previous vendor"
      fill_in :previous_efforts, with: "These are some efforts I made"

      click_button "Submit Application and Pay Fee"
      application = Application.last
      expect(current_path).to eq("/applications/#{application.id}")
      end
    end
  end
