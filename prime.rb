def is_prime?(number)
  for counter in 2..number-1
    if number % counter == 0
      return false
    end
  end
  return true
end

is_prime?(9)
