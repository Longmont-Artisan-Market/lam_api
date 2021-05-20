class Event < ApplicationRecord
  has_many :applications
  has_many :event_users
  has_many :users, through: :event_users
  validates_presence_of :name

  def self.open_for_application
    current_date = Date.today
    current_events = []
    Event.all.each do |event|
      if event.application_open_date <= current_date && event.application_close_date >= current_date
        current_events << event
      end
    end
    current_events
  end
end
