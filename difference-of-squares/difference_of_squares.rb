class Squares

  def initialize(num)
    @num = num
    @num_array = (1..@num).to_a
  end

  def square_of_sums
    @num_array.inject { |sum, i| sum + i }**2
  end

  def sum_of_squares
    @num_array.inject { |sum, i| sum + i**2 }
  end

  def difference
    square_of_sums - sum_of_squares
  end
end
