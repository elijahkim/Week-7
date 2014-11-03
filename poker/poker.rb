require './cards'
require './player'

class Poker
  def initialize
  end

  def game
    cards = Cards.new
    cards.new_cards
    cards.shuffle
    cards.show_cards
  end

  def deal(player)

  end
end

game = Poker.new
game.game
