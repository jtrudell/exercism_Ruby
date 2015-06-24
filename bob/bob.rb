class Bob
  def hey(remark)
    remark = remark.strip
    if remark[-1] == '?' && (!shouting(remark) || include_numbers(remark))
      'Sure.'
    elsif remark.empty?
      'Fine. Be that way!'
    elsif shouting(remark) && (!include_numbers(remark) || remark[-1] == '!')
      'Whoa, chill out!'
    else
      'Whatever.'
    end
  end

  def shouting(remark)
    remark.upcase == remark ? true : false
  end

  def include_numbers(remark)
    remark.to_f > 0 ? true : false
  end
end
