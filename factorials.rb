# Factorials Method #1

def factorial1(number)
  answer = 1
  for num in 1..number
  	answer *= num
  end
  return answer
end

factorial1(5)

# Factorials Method #2

def factorial2(number)
  range_of_numbers = (1..number).to_a
  range_of_numbers.reduce { |a, b| a * b }
end

factorial2(5)
