require 'rails_helper'

RSpec.describe RestaurantCategory, type: :model do
  describe 'factory' do
    it 'is valid' do
      expect(FactoryGirl.create(:restaurant_category)).to be_valid
    end
  end

  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
  end

  context `validations` do
    it { is_expected.to have_many(:restaurants) }
  end
end
