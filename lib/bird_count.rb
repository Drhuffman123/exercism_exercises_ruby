class BirdCount
  def self.last_week
    [0, 2, 5, 3, 7, 8, 4]
  end

  def initialize(birds_per_day)
    @yesterday = birds_per_day # [0, 0, 1, 0, 0, 1, 0]
  end

  def yesterday
    @yesterday[5]
  end

  def total
    @yesterday.sum
  end

  def busy_days
    @yesterday.count { |n| n >= 5 }
  end

  def day_without_birds?
    if @yesterday.count { |n| n == 0 } > 0
      true
    else
      false
    end
  end
end
