public

def nth(nth_prime, test_array = [0], p = 2, array_prime = [2])
  raise ArgumentError, 'Must be an integer greater than 0' if nth_prime <= 0 || nth_prime.integer? == false
  test_array |= (2..105000).to_a
  test_array.delete_if {|x| x % p == 0 && x != p} # use select! to delete multiples of x as well?
  if p != 2 
    array_prime.push(p)
  end
  test_array.delete(p)
  p = test_array[0]
  if array_prime.length != nth_prime
    nth(nth_prime, test_array, p, array_prime)
  else
  array_prime[-1] # nth prime
  end
end
