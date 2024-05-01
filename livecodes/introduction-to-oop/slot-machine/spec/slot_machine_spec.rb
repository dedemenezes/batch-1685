require_relative '../slot_machine'

RSpec.describe SlotMachine do
  describe '#score' do
    it 'returns 50 when 3 Jokers' do
      slot_machine = SlotMachine.new(['joker', 'joker', 'joker'])
      expect(slot_machine.score).to eq(50)
    end
    it 'returns 40 when 3 Stars' do
      slot_machine = SlotMachine.new(['star', 'star', 'star'])
      expect(slot_machine.score).to eq(40)
    end
    it 'returns 30 when 3 Bells' do
      slot_machine = SlotMachine.new(['bell', 'bell', 'bell'])
      expect(slot_machine.score).to eq(30)
    end
    it 'returns 20 when 3 Sevens' do
            slot_machine = SlotMachine.new(['seven', 'seven', 'seven'])
      expect(slot_machine.score).to eq(20)
    end
    it 'returns 10 when 3 Cherries' do
      slot_machine = SlotMachine.new(['cherry', 'cherry', 'cherry'])
      expect(slot_machine.score).to eq(10)
    end
  end

  it 'returns 25 when 2 Jokers + anything' do
      slot_machine = SlotMachine.new(['joker', 'joker', 'cherry'])
      expect(slot_machine.score).to eq(25)
  end
  it 'returns 25 when 2 Stars + Joker' do
      slot_machine = SlotMachine.new(['star', 'star', 'joker'])
      expect(slot_machine.score).to eq(20)
  end
  it 'returns 25 when 2 Bells + Joker' do
    slot_machine = SlotMachine.new(['bell', 'bell', 'joker'])
    expect(slot_machine.score).to eq(15)
  end
  it 'returns 25 when 2 Sevens + Joker' do
    slot_machine = SlotMachine.new(['seven', 'seven', 'joker'])
    expect(slot_machine.score).to eq(10)
  end
  it 'returns 25 when 2 Cherries + Joker' do
    slot_machine = SlotMachine.new(['cherry', 'cherry', 'joker'])
    expect(slot_machine.score).to eq(5)
  end
end
