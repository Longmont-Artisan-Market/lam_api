require 'rails_helper'

RSpec.describe Application, type: :model do
  describe "validations" do
    it {should validate_presence_of(:category)}
    it {should validate_presence_of(:mlm_status)}
    it {should validate_presence_of(:previous_vendor)}
    it {should validate_presence_of(:previous_efforts)}
    it {should validate_presence_of(:description)}
    it {should validate_presence_of(:price_range)}
  end

  describe 'relationships' do
    it {should belong_to :user}
  end
end
