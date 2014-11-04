require "./player"

class Game

  MOVES = [
    "R",
    "P",
    "S"
  ]


  def play
    get_response
    computer_response
    puts @player_move
    puts @computer_move
    compare_response
  end

  def get_response
    print "Your move? (R/P/S, q to quit) > "
    @player_move = gets.chomp
  end

  def computer_response
    @computer_move = MOVES[rand(0..2)]
  end

  def compare_response
    if @player_move == "R"
      if @computer_move == "R"
        puts "It's a Tie!"
      elsif @computer_move == "P"
        puts "You Lose"
      elsif @computer_move == "S"
        puts "You Win"
      end
    elsif @player_move == "P"
      if @computer_move == "R"
        puts "You Win"
      elsif @computer_move == "P"
        puts "It's a Tie"
      elsif @computer_move == "S"
        puts "You Lose"
      end
    elsif @player_move == "S"
      if @computer_move == "R"
        puts "You Lose"
      elsif @computer_move == "P"
        puts "You Win"
      elsif @computer_move == "S"
        puts "It's a Tie"
      end
    end
  end
end

game = Game.new
game.play

