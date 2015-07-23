class Bst
  include Enumerable

  ALL_DATA = []

  attr_accessor :number, :subs, :left_number, :right_number

  def initialize(number)
    @number = number
    @subs = [@left_number, @right_number]
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
    if ALL_DATA == []
      ALL_DATA << number
    end
    if new_number > number
      if right == nil
        @right_number = Bst.new(new_number)
        ALL_DATA.insert(ALL_DATA.index(number)+1, new_number)
      else
        right.insert(new_number)
      end
    else
      if left == nil
        @left_number = Bst.new(new_number)
        ALL_DATA.insert(ALL_DATA.index(number), new_number)
      else
        left.insert(new_number)
      end
    end
  end

  def all_data
    list = [number]
  end

  def each
    if left != nil then
      if left_number.left != nil
      yield left_number.left.data
      end 
      yield left_number.data 
      if left_number.right != nil
        yield left_number.right.data
      end
    end
    yield number
    if right != nil then
      if right_number.left != nil
      yield right_number.left.data
      end 
      yield right_number.data
      if right_number.right != nil
        yield right_number.right.data
      end
    end
  end
end



