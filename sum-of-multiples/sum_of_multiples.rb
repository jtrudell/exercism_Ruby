class SumOfMultiples
  def initialize(x, y, z = x)
    @x = x
    @y = y
    @z = z
  end

  def self.to(limit)
    new(3, 5).to(limit)
  end

  def to(limit)
    range = (1...limit).to_a
    numbers = []
    range.each do |number|
      if number % @x == 0 || number % @y == 0 || number % @z == 0
        numbers << number
      end
    end
    if numbers.empty? then 0
    else numbers.reduce(:+)
    end
  end
end
