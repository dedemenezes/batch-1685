require 'pry-byebug'
class SlotMachine
  MACHINE = ['cherry', 'seven', 'bell', 'star', 'joker']

  attr_reader :reels

  def initialize(reels=[])
    @reels = reels
    @score = 0
  end

  def score
    # Three of a kind
    if @reels.uniq.count == 1
      position = MACHINE.index(@reels.first) + 1
      @score = position * 10
    end
    if @reels.uniq.count == 2 && @reels.include?('joker')
      # We need to figure out which one is repeting
      if  @reels.count('joker') == 2
        @score = 25
      else
        reels_copy = @reels
        reels_copy.delete('joker')
        position = MACHINE.index(reels_copy.first) + 1
        @score = position * 5
      end

      # binding.pry
      # repeated_reel = @reels[1]
      # position = MACHINE.index(repeated_reels) + 1
      # @score = position * 5
    end

    # Two of a joker + anything
    # Two of a kind + joker
    return @score
  end

  def play
    3.times do
      @reels << MACHINE.sample
    end
  end
end

# Joker 🤩	50	25 (2 jokers + anything)
# Star ⭐️	  40	20
# Bell 🛎	   30	 15
# Seven 7️⃣	 20	 10
# Cherry 🍒	10	5

# when having 2 we score half point of 3


sm = SlotMachine.new
sm.play
p sm.reels
puts sm.score
