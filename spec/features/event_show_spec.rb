require 'rails_helper'

RSpec.describe 'As a visitor' do
  it 'can visit the event show page' do
    event = Event.create(name: '2021 Handcrafted Holiday Market',
                                   application_open_date: Date.new(2021, 5, 1),
                                   application_close_date: Date.new(2021, 8, 1))
    visit "/events/#{event.id}"

    expect(page).to have_content(event.name)
    expect(page).to have_content(event.application_open_date.strftime("%m-%d-%Y"))
    expect(page).to have_content(event.application_close_date.strftime("%m-%d-%Y"))
  end
end

