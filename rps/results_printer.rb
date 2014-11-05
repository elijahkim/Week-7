class ResultsPrinter
  def print_results(move, results, score)
    puts "your move is #{move.player_move}"
    puts "the computer's move is #{move.computer_move}"
    puts results
    puts "You have #{score[:wins]} wins and #{score[:losses]} losses"
  end
end
