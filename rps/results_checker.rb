class ResultsChecker
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
