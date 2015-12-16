class Clock

  def self.at(*time)
    hour_to_minutes = time[0] * 60
    if time[1] != nil
      minutes = hour_to_minutes + time[1]
    else
      minutes = hour_to_minutes
    end
    @hour = minutes / 60
    @minutes = minutes % 60
    @hour < 10 ? hour = "0#{@hour}" : hour = "#{@hour}"
    @minutes < 10 ? minutes = "0#{@minutes}" : minutes = "#{@minutes}"
    "#{hour}:#{minutes}"
  end

  def +(additional_minutes)
    @minutes += additional_minutes
    self.at(@hour, @minutes)
  end
end
