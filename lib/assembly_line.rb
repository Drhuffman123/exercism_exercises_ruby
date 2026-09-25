class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      221.0 * @speed
    elsif @speed <= 8
      0.9 * 221.0 * @speed
    elsif @speed <= 9
      0.8 * 221.0 * @speed
    else # @speed <= 10
      0.77 * 221.0 * @speed
    end.round(1)
  end

  def production_rate_per_minute
    production_rate_per_hour / 60
  end

  def working_items_per_minute
    (production_rate_per_minute - 0.8).round(0)
  end
end
