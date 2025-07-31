class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    success_rate = 1

    if 5 <= @speed and @speed <= 8
      success_rate = 0.9
    elsif @speed == 9
      success_rate = 0.8
    elsif @speed == 10
      success_rate = 0.77
    end

    @speed * 221 * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
