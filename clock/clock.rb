class Clock
  attr_reader :hour, :minutes

  def initialize(hour, minutes)
    total_minutes = hour * 60 + minutes
    total_minutes += 1440 if total_minutes < 0
    @hour = total_minutes / 60
    @hour -= 24 if @hour >= 24
    @minutes = total_minutes % 60
  end

  def self.at(*time)
    time[1] = 0 if time[1] == nil
    Clock.new(time[0], time[1])
  end

  def +(minutes)
    Clock.new(@hour, @minutes + minutes)
  end

  def -(minutes)
    Clock.new(@hour, @minutes - minutes)
  end

  def to_s
    if @hour < 10
      string_hour = "0#{@hour}"
    else
      string_hour = "#{@hour}"
    end
    if @minutes < 10
      string_minutes = "0#{@minutes}"
    else
      string_minutes = "#{@minutes}"
    end
    "#{string_hour}:#{string_minutes}"
  end

  def ==(clock)
    true if self.hour === clock.hour && self.minutes === clock.minutes
  end
end
