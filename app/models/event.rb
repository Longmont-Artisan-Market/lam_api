class Event < ApplicationRecord
  has_many :event_users
  validates_presence_of :name
end
