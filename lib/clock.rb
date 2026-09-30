=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
class Clock
  attr_accessor :hour
  attr_accessor :minute

  def initialize(hour: 0, minute: 0) # hour: 0, minute: 0
    @hour = hour
    @minute = minute
    realign
    self
  end

  def realign
    realign_minutes
    realign_hour
  end

  def realign_minutes
    if @minute < 0
      @minute += 60
      @hour -= 1
      realign_minutes=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end
class Clock
  attr_accessor :hour
  attr_accessor :minute

  def initialize(hour: 0, minute: 0) # hour: 0, minute: 0
    @hour = hour
    @minute = minute
    realign
    self
  end

  def realign
    realign_minutes
    realign_hour
  end

  def realign_minutes
    if @minute < 0
      @minute += 60
      @hour -= 1
      realign_minutes
    elsif @minute >= 60
      @minute -= 60
      @hour += 1
      realign_minutes
    else
      true
    end
  end

  def realign_hour
    if @hour < 0
      @hour += 24
      realign_hour
    elsif @hour >= 24
      @hour -= 24
      realign_hour
    else
      true
    end
  end

  def +(other) # hour=0, minute=0
    @hour += other.hour
    @minute += other.minute
    realign
    self
  end

  def -(other) # hour=0, minute=0
    @hour -= other.hour
    @minute -= other.minute
    realign
    self
  end

  def to_s
    "#{@hour.to_s.rjust(2, '0')}:#{@minute.to_s.rjust(2, '0')}"
  end

  def ==(other)
    self.realign
    other.realign
    if other.hour == @hour && other.minute == @minute
      true
    else
      false
    end
  end
end

    elsif @minute >= 60
      @minute -= 60
      @hour += 1
      realign_minutes
    else
      true
    end
  end

  def realign_hour
    if @hour < 0
      @hour += 24
      realign_hour
    elsif @hour >= 24
      @hour -= 24
      realign_hour
    else
      true
    end
  end

  def +(other) # hour=0, minute=0
    @hour += other.hour
    @minute += other.minute
    realign
    self
  end

  def -(other) # hour=0, minute=0
    @hour -= other.hour
    @minute -= other.minute
    realign
    self
  end

  def to_s
    "#{@hour.to_s.rjust(2, '0')}:#{@minute.to_s.rjust(2, '0')}"
  end

  def ==(other)
    self.realign
    other.realign
    if other.hour == @hour && other.minute == @minute
      true
    else
      false
    end
  end
end
