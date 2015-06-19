class Robot
  attr_accessor :name

  def initialize
    @name = random_letters << random_numbers
  end

  def random_letters
    rand(65..90).chr << rand(65..90).chr
  end

  def random_numbers
    rand(9).to_s << rand(9).to_s << rand(9).to_s
  end

  def reset
    initialize
  end
end
