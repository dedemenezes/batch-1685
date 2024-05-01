require_relative '../citizen.rb'

RSpec.describe Citizen do
  describe "#can_vote?" do
    it 'returns true if the citizen is at least 16 years old' do
      citizen = Citizen.new('', '', 16)
      expect(citizen.can_vote?).to eq(true)
    end

    it 'returns false when the citizen is younger than 16 years old' do
      citizen = Citizen.new('', '', 15)
      expect(citizen.can_vote?).to eq(false)
    end
  end
end

# DSL
