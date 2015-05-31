public

def to_roman
  
  roman_hash = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
  if self < 5
    roman_hash.key(1) * self
    end
end

