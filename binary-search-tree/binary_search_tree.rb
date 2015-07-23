class Bst
  include Enumerable

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
    @left_number
  end

  def right
    @right_number
  end

  def insert(new_number)
    if new_number > number
      if @right_number == nil
        @right_number = Bst.new(new_number)
      else
        right_number.insert(new_number)
      end
    else
      if @left_number == nil
        @left_number = Bst.new(new_number)
      else
        left_number.insert(new_number)
      end
    end
  end

  def each
    yield
  end
end

