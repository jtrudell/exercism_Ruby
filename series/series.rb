class Series
  def initialize(number)
    @number = number.split('')
  end

  def slices(slice_length)
    if slice_length > @number.length
      fail ArgumentError, 'slice length longer than number'
    end
    @number.each_index { |i| @number[i] = @number[i].to_i }
    @number.each_index { |i| @number[i] = @number.slice(i, slice_length) }
    (slice_length - 1).times { @number.delete_at(-1) }
    @number
  end
end
