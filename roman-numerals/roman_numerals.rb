public

def to_roman(number = self)
  if number >= 1000
    assign_letter('M', 1000, number)
  elsif number >= 500
    assign_letter('D', 500, number)
  elsif number >= 100
    assign_letter('C', 100, number)
  elsif number >= 50
    assign_letter('L', 50, number)
  elsif number >= 10
    assign_letter('X', 10, number)
  elsif number >= 5
    assign_letter('V', 5, number)
  else 
    if number == 4
      'IV'
    else
      assign_letter('I', 1, number)
    end
  end
end

def assign_letter(letter, value, number)
  x = number / value
  return letter * x
  number -= x * value
  unless number <= 0
  to_roman(number)
end
end