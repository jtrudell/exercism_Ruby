class PhoneNumber
  def initialize(number)
    @number = number
    @string_length = number.length
    scrub_number
  end

  def scrub_number
    @number.each_char do |character|
      if character.ord < 48 || character.ord > 57
        @number.gsub!(character, '')
      end
    end
    @number.length == 11 && @number.start_with?('1') ? @number.slice!(0) : nil
  end

  def number
    if @number.length == 10 && @string_length - @number.length < 5
      @number
    else
      '0000000000'
    end
  end

  def area_code
    @number.slice(0, 3)
  end

  def to_s
    if number == '0000000000' then fail ArgumentError, 'Not a valid number' end
    @number.insert(0, '(')
    @number.insert(4, ') ')
    @number.insert(9, '-')
  end
end
