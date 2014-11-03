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
    @deck.show_cards

    @player1.show

   # check_values(@player1)
  end

  def deal(player)
    5.times do |time|
      player.hand << @deck.cards[time]
      @deck.cards.delete_at(time)
    end
  end

  def check_hand

  end

  def check_values(player)
   # puts player.hand.sort_by{|card| card[:rank]}
  end
end

player1 = Player.new("eli")
player2 = Player.new("jah")

game = Poker.new([player1, player2])
game.game
