require "./card.rb"

class Deck
  
  attr_accessor :cards

  def initialize
    @cards = []
    values = (1..13).to_a
    suits = ["clubs", "hearts", "diamonds", "spades"]

    values.each do |value|
      suits.each do |suit|
        card = Card.new(value, suit)
        @cards << card
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def draw
    @cards.slice!(rand(@cards.length))
  end
end

