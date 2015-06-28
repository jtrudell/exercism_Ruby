class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    test_array = Array(2..@limit)
    test_array.each do |test_number|
      test_array.keep_if { |number| number % test_number != 0 || number == test_number }
    end
    test_array
  end
end
