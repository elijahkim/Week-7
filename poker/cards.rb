class Cards
  def new_cards
    numbers = ["A","1","2","3","4","5","6","7","8","9","T","J","Q","K"]
    suits = ["C","S","H","D"]
    @cards = []

    numbers.each do |number|
      suits.each do|suit|
        @cards << "#{number}#{suit}" 
      end
    end
  end

  def show_cards
    puts @cards
  end

  def shuffle
    @cards.shuffle!
  end
end

