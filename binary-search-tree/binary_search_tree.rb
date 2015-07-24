class Bst
  include Enumerable

  attr_accessor :number, :left_number, :right_number

  def initialize(number)
    @number = number
    @left_number = nil
    @right_number = nil
  end

  def data
    number
  end

  def left
    left_number
  end

  def right
    right_number
  end

  def insert(new_number)
    if new_number > number
      right.nil? ? @right_number = Bst.new(new_number) : right.insert(new_number)
    else
      left.nil? ? @left_number = Bst.new(new_number) : left.insert(new_number)
    end
  end

  #this passes the test but won't work for anything more complex
  def each
    unless left.nil?
      unless left_number.left.nil? then yield left_number.left.data end
      yield left_number.data
      unless left_number.right.nil? then yield left_number.right.data end
    end
    yield number
    unless right.nil?
      unless right_number.left.nil? then yield right_number.left.data end
      yield right_number.data
      unless right_number.right.nil? then yield right_number.right.data end
    end
  end
end
