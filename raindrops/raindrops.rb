   class Raindrops
    def self.convert(number)
      rain = ["Pling", "Plang", "Plong"]
      if number % 105 == 0 
        rain.join("")
      elsif number % 15 == 0 && number % 150 != 0
        rain[0] + rain[1]
      elsif number % 21 == 0 && number % 150 != 0
        rain[0] + rain[2]
      elsif number % 35 == 0 && number % 150 != 0
        rain[1] + rain[2]
      elsif number % 3 == 0 && (number % 5 != 0 || number % 7 != 0)
        rain[0]
      elsif number % 5 == 0 && (number % 3 != 0 || number % 7 != 0)
        rain[1]
      elsif number % 7 == 0 && (number % 5 != 0 || number % 3 != 0)
        rain[2]
      else number.to_s
      end
    end
  end
  