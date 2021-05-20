require 'rails_helper'

RSpec.describe Event, type: :model do
  describe "validations" do
    it {should validate_presence_of(:name)}
  end

  describe "relationships" do
    it { should have_many :event_users}
    it { should have_many(:users).through(:event_users) }
    it { should have_many(:applications) }
  end
end
