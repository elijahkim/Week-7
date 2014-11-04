class Game

  AVAILABLE_MOVES = [
    "R",
    "P",
    "S"
  ]


  def play
    move = Move.new
    move.player_move = get_response
    move.computer_move = computer_response
    puts move.player_move
    puts move.computer_move
    compare_response(move)
  end

  def get_response
    print "Your move? (R/P/S, q to quit) > "
    gets.chomp.capitalize
  end

  def computer_response
    AVAILABLE_MOVES[rand(0..2)]
  end

  def compare_response(move)
    if move.player_move == "R"
      if move.computer_move == "R"
        puts "It's a Tie!"
      elsif move.computer_move == "P"
        puts "You Lose"
      elsif move.computer_move == "S"
        puts "You Win"
      end
    elsif move.player_move == "P"
      if move.computer_move == "R"
        puts "You Win"
      elsif move.computer_move == "P"
        puts "It's a Tie"
      elsif move.computer_move == "S"
        puts "You Lose"
      end
    elsif move.player_move == "S"
      if move.computer_move == "R"
        puts "You Lose"
      elsif move.computer_move == "P"
        puts "You Win"
      elsif move.computer_move == "S"
        puts "It's a Tie"
      end
    end
  end
end


