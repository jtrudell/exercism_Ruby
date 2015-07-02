class Array
  def accumulate(&operation)
    if operation.nil? then []
    else
      self.each_with_index { |item, i| self[i] = operation.call(item) }
    end
  end
end
