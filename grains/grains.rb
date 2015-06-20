class Grains
  def self.square(number)
    (1..number).inject(0) { |_sum, x| 2**(x - 1) }
  end

  def self.total
    (1..64).inject(0) { |sum, x| sum + 2**(x - 1) }
  end
end
