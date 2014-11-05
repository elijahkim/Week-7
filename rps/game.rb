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
    score_keeper = ScoreKeeper.new
    score_keeper.keep_score(results)
    score = score_keeper.score
    puts score.inspect
    ResultsPrinter.new.print_results(move, results, score)
  end

  def get_response
    print "Your move? (R/P/S, q to quit) > "
    gets.chomp.capitalize
  end
end


