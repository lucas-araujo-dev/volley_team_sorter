# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Player, type: :model do
  subject(:player) { build(:player) }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:position) }
    it { is_expected.to validate_numericality_of(:set).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
    it { is_expected.to validate_numericality_of(:block).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
    it { is_expected.to validate_numericality_of(:serve).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
    it { is_expected.to validate_numericality_of(:dig).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
    it { is_expected.to validate_numericality_of(:spike).is_greater_than_or_equal_to(0).is_less_than_or_equal_to(5) }
  end

  describe 'player create' do
    before { player.save }

    it { is_expected.to be_persisted }
  end
end
