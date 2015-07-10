class PrimeFactors
  require 'prime'

  def self.for(number)
    prime_factors = []
    if number < 1_000_000
      prime_range = Prime.each(number).to_a
    else
      prime_range = Prime.each(number / 100_000).to_a
    end
    prime_range.each do |prime_number|
      while number % prime_number == 0
        prime_factors << prime_number
        number /= prime_number
      end
    end
    prime_factors
  end
end
