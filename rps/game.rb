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
    ResultsChecker.new.compare_response(move)
  end

  def get_response
    print "Your move? (R/P/S, q to quit) > "
    gets.chomp.capitalize
  end

  def computer_response
    AVAILABLE_MOVES[rand(0..2)]
  end
end


