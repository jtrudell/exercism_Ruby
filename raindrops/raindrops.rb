class Raindrops
  def self.convert(number)
    rain = %w(Pling Plang Plong)
    if number % 105 == 0
      rain.join('')
    elsif number % 3 == 0
      rain[0] + (number % 5 == 0 ? rain[1] : (number % 7 == 0 ? rain[2] : ''))
    elsif number % 5 == 0
      rain[1] + (number % 7 == 0 ? rain[2] : '')
    else
      number % 7 == 0 ? rain[2] : number.to_s
    end
  end
end
