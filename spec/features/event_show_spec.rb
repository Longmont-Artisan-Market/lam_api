require 'rails_helper'

RSpec.describe 'As a visitor' do
  user = User.create(name: "Krista Stadler",
                     email_address: "user@gmail.com",
                     business_name: "Business",
                     password: "secret_password",
                     password_confirmation: "secret_password")

  it 'can visit the event show page' do
    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    event = Event.create(name: '2021 Handcrafted Holiday Market',
                                   application_open_date: Date.new(2021, 5, 1),
                                   application_close_date: Date.new(2021, 8, 1))
    visit "/events/#{event.id}"

    expect(page).to have_content(event.name)
    expect(page).to have_content(event.application_open_date.strftime("%m-%d-%Y"))
    expect(page).to have_content(event.application_close_date.strftime("%m-%d-%Y"))
  end
end

