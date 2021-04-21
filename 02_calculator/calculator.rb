# add method takes two parameters and returns the sum
def add(first_number, second_number)
  return first_number + second_number
end   

# subtract method takes in two parameters and returns the answer
def subtract(first_number, second_number)
  return first_number - second_number
end    

# sum method computes the sum of all the numbers sent into this method
def sum(number_array)
  total = 0
  number_array.each do |number|
    total = total + number
  end  
  return total
end      

# this method multiplies 2 numbers and returns the product
def multiply(first_number, second_number)
  return first_number * second_number
end

# this method takes in array of numbers and multiplies all together and returns the product
def multiply(*numbers)
  product = 1
  numbers.each {|number| product = product * number} 
  return product
end    

# this method calculates the power with a given base and an exponential
def power(base, exp)
  power = 1
  exp.times do
    power = power * base
  end
  return power
end

# this method calculates the factorial of a given number. eg.: 3!=6
def factorial(number)
  result = 1
  for i in 1..number
    result = result * i
  end  
  result
end  