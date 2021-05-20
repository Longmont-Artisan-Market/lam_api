require 'rails_helper'

RSpec.describe "As a logged in user" do
  describe "When I visit my profile page" do
    user = User.create(name: "Krista Stadler",
                       email_address: "user@gmail.com",
                       business_name: "Business",
                       password: "secret_password",
                       password_confirmation: "secret_password")

    it "shows me a list of available events to apply for" do
      allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

      old_event = Event.create(name: "2020 Handcrafted Holiday Market",
                               application_open_date: Date.new(2020, 5, 1),
                               application_close_date: Date.new(2020, 6, 1))
      current_event = Event.create(name: "2021 Handcrafted Holiday Market",
                               application_open_date: Date.new(2021, 5, 1),
                               application_close_date: Date.new(2021, 8, 1))
      visit "/profile"

      expect(page).to have_content(current_event.name)
      expect(page).to_not have_content(old_event.name)
    end
  end
end

