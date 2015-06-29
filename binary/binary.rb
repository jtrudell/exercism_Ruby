class Binary
  VERSION = 1

  def initialize(binary_number)
    @binary_number = binary_number
  end

  def to_decimal
    decimal_number = 0
    binary_array = @binary_number.reverse.each_char.to_a
    raise ArgumentError, 'not a binary number' unless binary?
    binary_array.inject(0) do |power, number|
      decimal_number += number.to_i * 2**power
      power += 1
    end
    decimal_number
  end

  def binary?
    other_characters = @binary_number.gsub(/[01]/, '') 
    if other_characters.empty? 
      true
    end
  end
end
