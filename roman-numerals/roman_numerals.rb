
public

def to_roman(number = self.to_i, roman_number = '')
  roman_hash = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
                 90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX',
                 5 => 'V', 4 => 'IV', 1 => 'I' }
  roman_hash.each_pair do |letter_value, letter|
    repeat_letter = number / letter_value
    roman_number += letter * repeat_letter
    number -= letter_value * repeat_letter
  end
  roman_number
end
