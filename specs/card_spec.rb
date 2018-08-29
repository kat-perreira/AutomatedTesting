
require_relative 'spec_helper'

describe Card do
  describe "You can create a Card instance" do

    it "Can be created" do
      [:hearts, :spades, :clubs, :diamonds].each do |suit|
        (1..13).each do |value|
          card = Card.new(value, suit)
          expect(card).must_be_instance_of Card
        end
      end
    end

    it "Raises an ArgumentError for invalid parameters" do
      # To raise an ArgumentError in card.rb
      # raise ArgumentError.new
      expect {Card.new(0, :diamonds)}.must_raise ArgumentError
      expect {Card.new(14, :diamonds)}.must_raise ArgumentError
      expect {Card.new(13, :clovers)}.must_raise ArgumentError
    end
  end

  describe "Testing to_s" do

    it "to_s returns a readable String value logically for values 2-10" do
      test_card = Card.new(3, :diamonds)
      expect(test_card.to_s).must_equal("#{3} of diamonds")
    end

    it "to_s returns a readable String value for Ace, Jack, Queen, King" do
      test_card = Card.new("Queen", :diamonds)
      expect(test_card.to_s).must_equal("Queen of diamonds")
    end
  end

  describe "Reader methods" do

    it "Can retrieve the value of the card using a `.value`." do
      # ensure that `.value works as expected`
      test_card = Card.new("Queen", :spades)
      expect(test_card.value).must_equal("Queen")
    end

    it "Can retrieve the value of the card using a `.suit`." do
      # ensure that `.suit works as expected returning the symbol of the suit`
      test_card = Card.new(5, :diamonds)
      expect(test_card.suit).must_equal(:diamonds)

    end

  end

end
