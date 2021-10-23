class Clock
  HOURS_PER_DAY = 24
  MINUTES_PER_HOUR = 60
  TIME_FORMAT = '%02d:%02d'.freeze

  attr_accessor :hours, :minutes

  def initialize(hour: 0, minute: 0)
    min = minute / MINUTES_PER_HOUR
    @minutes = minute % MINUTES_PER_HOUR
    @hours = (hour + min) % HOURS_PER_DAY
  end

  def to_s
    result = TIME_FORMAT % [@hours, @minutes]
  end

  def +(other)
  	positive_hours =  other.hours + @hours
  	positive_minutes = other.minutes + @minutes

    Clock.new(hour: positive_hours, minute: positive_minutes)
  end

  def -(other)
  	negative_hours =  @hours - other.hours
  	negative_minutes = @minutes - other.minutes

    Clock.new(hour: negative_hours, minute: negative_minutes)
  end

  def ==(other)
    @minutes == other.minutes && @hours == other.hours
  end

end