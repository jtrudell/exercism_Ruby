class Bob
  def hey(remark)
    remark.strip!
    if remark[-1] == '?' && (!shouting(remark) || starts_with_numbers(remark))
      'Sure.'
    elsif remark.empty?
      'Fine. Be that way!'
    elsif shouting(remark) && (!starts_with_numbers(remark) || remark[-1] == '!')
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end

  def shouting(remark)
    remark.upcase == remark
  end

  def starts_with_numbers(remark)
    remark.to_f > 0
  end
end
