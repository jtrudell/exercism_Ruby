class Clock

  def self.at(*time)
    hour = "#{time[0]}"
    if time[1] != nil
      minute = "#{time[1]}"
    else
      minute = "0"
    end
    @time = [hour, minute]
    @time.map! do |num|
      if num.to_i < 10
        num = "0#{num}"
      else
        num = num
      end
    end
    @time.join(":")
  end
end
