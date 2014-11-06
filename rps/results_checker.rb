class ResultsChecker
  def compare_response(move)
    if move.player_move == "R"
      if move.computer_move == "R"
        "It's a Tie!"
      elsif move.computer_move == "P"
        "You Lose"
      elsif move.computer_move == "S"
        "You Win"
      end
    elsif move.player_move == "P"
      if move.computer_move == "R"
        "You Win"
      elsif move.computer_move == "P"
        "It's a Tie"
      elsif move.computer_move == "S"
        "You Lose"
      end
    elsif move.player_move == "S"
      if move.computer_move == "R"
        "You Lose"
      elsif move.computer_move == "P"
        "You Win"
      elsif move.computer_move == "S"
        "It's a Tie"
      end
    end
  end
end
