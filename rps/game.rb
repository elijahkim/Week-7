class Game
  attr_reader :score_keeper, :move, :computer, :results_checker, :results_printer

  AVAILABLE_MOVES = [
    "R",
    "P",
    "S"
  ]

  def initialize(computer_type = "hard")
    @score_keeper = ScoreKeeper.new
    @move = Move.new
    @computer = Computer.new(computer_type)
    @results_checker = ResultsChecker.new
    @results_printer = ResultsPrinter.new
  end

  def play
    until move.player_move == "Q"
      move.player_move = get_response
      move.computer_move = computer.give_response
      results = results_checker.compare_response(move)
      score_keeper.keep_score(results)
      results_printer.print_results(move, results, score_keeper.score)
    end
  end

  private

  def get_response
    print "Your move? (R/P/S, Q to quit) > "
    gets.chomp.capitalize
  end
end


