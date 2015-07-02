class SumOfMultiples

  def initialize(x = 3, y = 5, z = 1)
    @x = x
    @y = y
    @z = z
  end

  def self.to(limit)
    range = (1...limit).to_a
    numbers = []
    range.each do |number| 
      if number % 3 == 0 || number % 5 == 0
        numbers << number
      end
    end
    numbers.reduce(:+) 
      # if @z > 1 && number % @z.to_i == 0
      #   sum += number
      # end
  end
end

#puts SumOfMultiples.to(4)