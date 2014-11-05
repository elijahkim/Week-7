class Game
  AVAILABLE_MOVES = [
    "R",
    "P",
    "S"
  ]

  def play
    move = Move.new
    move.player_move = get_response
    move.computer_move = Computer.new.give_response
    results = ResultsChecker.new.compare_response(move)
    ResultsPrinter.new.print_results(move, results)
  end

  def get_response
    print "Your move? (R/P/S, q to quit) > "
    gets.chomp.capitalize
  end
end


