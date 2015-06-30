class Array
  def accumulate(&operation)
    if operation.nil? then return []
    else
      self.each_with_index { |n, i| self[i] = operation.call(n) }
    end
  end
end
