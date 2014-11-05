class ResultsPrinter
  def print_results(move, results)
    puts "your move is #{move.player_move}"
    puts "the computer's move is #{move.computer_move}"
    puts results
  end
end
