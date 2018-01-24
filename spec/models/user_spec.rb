require 'rails_helper'

describe User, type: :model do
  describe 'validations' do
    describe 'name' do
      it { is_expected.to validate_length_of(:name).is_at_least(2) }
      it { is_expected.to validate_length_of(:name).is_at_most(30) }
    end

    describe 'surname' do
      it { is_expected.to validate_length_of(:surname).is_at_least(2) }
      it { is_expected.to validate_length_of(:surname).is_at_most(40) }
    end

    describe 'birthdate' do
      it { is_expected.to validate_presence_of(:birthdate) }
    end
  end
end
