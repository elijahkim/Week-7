require './cards'
require './player'

class Poker

  def initialize(players)
    @player1 = players[0]
    @player2 = players[1]
  end

  def game
    @deck = Cards.new
    @deck.new_cards
    @deck.cards.shuffle!
    deal(@player1)
    puts @player1.hand
    puts @deck.cards.count
  end

  def deal(player)
    5.times do |time|
      player.hand << @deck.cards[time]
      @deck.cards.delete_at(time)
    end
  end
end

player1 = Player.new("eli")
player2 = Player.new("jah")

game = Poker.new([player1, player2])
game.game
