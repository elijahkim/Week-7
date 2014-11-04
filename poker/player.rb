class Player
  attr_reader :name
  attr_accessor :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def show
    self.hand.each do |card|
      card.show_card
    end
  end
end
