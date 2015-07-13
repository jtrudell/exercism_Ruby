class Trinary
  attr_reader :integer_array

  def initialize(number_string)
    @integer_array = number_string.split('').map(&:to_i)
  end

  def to_decimal
    trinary_number = 0
    integer_array.reverse.inject(0) do |power, number|
      trinary_number += number * 3**power
      power + 1
    end
    trinary_number
  end
end
