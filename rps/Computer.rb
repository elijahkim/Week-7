class Computer
  def initialize(computer_type)
  end

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
