# Power Method #1

def power1(number, exponent)
  total = 1
  exponent.times do |num|
  	total *= number
  end
  return total
end

power1(3,4)

# Power Method #2

def power2(number, exponent)
  Array.new(exponent, number).reduce { |a, b| a * b }
end

power2(3,4)
