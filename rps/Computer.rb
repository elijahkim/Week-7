class Computer
  def give_response
    AVAILABLE_MOVES[rand(0..2)]
  end

  private

  AVAILABLE_MOVES = [
    "R",
    "P",
    "S"
  ]
end
