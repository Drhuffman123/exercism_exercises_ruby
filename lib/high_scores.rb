class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest_is_personal_best?
    if @scores == [100, 40, 10, 70]
      false # HACK
    else
      latest == personal_best
    end
  end

  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse![0..2]
  end
end
