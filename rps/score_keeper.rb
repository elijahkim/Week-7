class ScoreKeeper
  attr_accessor :score

  def initialize
    @score = {
      :wins => 0,
      :losses => 0
    }
  end

  def keep_score(results)
    if results == "You Win"
      score[:wins] += 1
    elsif results == "You Lose"
      score[:losses] +=1
    end
  end
end
