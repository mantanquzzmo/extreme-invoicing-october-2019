# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :organisation_number }
    it { is_expected.to have_db_column :address }
    it { is_expected.to have_db_column :postcode }
    it { is_expected.to have_db_column :city }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(create(:customer)).to be_valid
    end
  end
end
