class User < ApplicationRecord
  validates :email_address, uniqueness: true, presence: true
  has_secure_password
  validates_presence_of :name, :business_name, :password_digest

  enum role: {default: 0, admin: 1}
end
