require './card'
require './player'
require './deck'

class Poker
  def initialize(players)
    @player1 = players[0]
    @player2 = players[1]
  end

  def game
    @deck = Deck.new
    @deck.generate_cards
    @deck.cards.shuffle!
    deal(@player1)
    deal(@player2)
    @player1.show
  end

  def deal(player)
    5.times do
      player.hand << @deck.cards.pop
    end
  end
end

player1 = Player.new("player1")
player2 = Player.new("player2")

game = Poker.new([player1, player2])
game.game
