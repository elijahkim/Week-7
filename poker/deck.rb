require './card'

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def generate_cards
    numbers = ["A","2","3","4","5","6","7","8","9","T","J","Q","K"]
    suits = ["C","S","H","D"]

    numbers.each do |number|
      suits.each do|suit|
        @cards << Card.new(number, suit)
      end
    end
  end

  def show_cards
    @cards.each do |card|
      puts card.rank + card.suit
    end
  end
end
