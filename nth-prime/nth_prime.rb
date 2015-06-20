public

def nth(nth_prime, test_array = (2..100000).to_a, primes_array = [])
  raise ArgumentError, 'Must be an integer greater than 0' if nth_prime <= 0 || nth_prime.integer? == false
  if primes_array.length != nth_prime
    p = test_array[0]
    test_array -= test_array.find_all {|i| i % p == 0}
    primes_array << p
    nth(nth_prime, test_array, primes_array)
  else
    primes_array[-1]
  end
end
