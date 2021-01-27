class User < ApplicationRecord
  has_many :applications
  has_many :event_users
  validates :email_address, uniqueness: true, presence: true
  has_secure_password
  validates_presence_of :name, :business_name, :password_digest

  enum role: {default: 0, admin: 1}
end
