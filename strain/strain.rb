class Array
  def keep(&operation)
    action(operation, true)
  end

  def discard(&operation)
    action(operation, false)
  end

  def action(operation, boolean)
    return_array = []
    each do |item|
      operation.call(item) == boolean ? return_array << item : false
    end
    return_array
  end
end
