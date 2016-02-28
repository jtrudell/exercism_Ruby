class Hexadecimal
  HEX = %w(0 1 2 3 4 5 6 7 8 9 a b c d e f)

  def initialize(hex)
    @hex_digits = hex.reverse.split('')
  end

  def to_decimal
    decimal = 0
    @hex_digits.each_with_index do |digit, index|
      return 0 unless HEX.index(digit)
      decimal += HEX.index(digit) * 16**index
    end
    decimal
  end
end
