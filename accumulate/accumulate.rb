class Array
  def accumulate(&operation)
    return_array = []
    each { |item| return_array << operation.call(item) }
    return_array
  end
end
