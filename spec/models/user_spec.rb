require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:business_name)}
    it {should validate_presence_of(:email_address)}
    it {should validate_presence_of(:password_digest)}

    it {should validate_uniqueness_of(:email_address)}
  end
end
