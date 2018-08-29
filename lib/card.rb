
# card.rb
require 'pry'

class Card
  attr_reader :value, :suit

  def initialize(value, suit)
    @value = value
    @suit = suit
    # Valid values
    good_values_ints = *(1..13)
    face_cards = ["Queen", "King", "Jack", "Ace"]
    good_values = (good_values_ints << face_cards).flatten!

    value_array = [@value]
    value_comparisons = good_values - value_array
    # binding.pry
    if value_comparisons.length == 17
      raise ArgumentError.new("Not a valid value")
    end
    # Valid suits
    good_suits = [:diamonds, :hearts, :clubs, :spades]
    suit_array = [@suit]
    suit_comparisons = good_suits - suit_array
    if suit_comparisons.length == 4
      raise ArgumentError.new("Not a valid suit")
    end
    # binding.pry
  end


  def to_s
    return "#{value} of #{suit.to_s}"
  end

end
