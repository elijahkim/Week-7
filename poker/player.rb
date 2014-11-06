class Player
  attr_reader :name
  attr_accessor :hand

  def initialize(name)
    @name = name
    @hand = []
  end

  def show
    puts "-" * name.length
    puts name
    puts "-" * name.length
    self.hand.each do |card|
      card.show_card
    end
  end
end
