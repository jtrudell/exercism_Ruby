class SumOfMultiples
  def initialize(*divide_by)
    @divide_by = *divide_by
  end

  def self.to(limit)
    new(3, 5).to(limit)
  end

  def to(limit)
    numbers = []
    @divide_by.each do |divisor|
      (1...limit).to_a.each do |number|
        if number % divisor == 0 && !numbers.include?(number)
          numbers << number
        end
      end
    end
    numbers.empty? ? 0 : numbers.reduce(:+)
  end
end
