def add(num_1, num_2)
  num_2.times do
    num_1 = num_1.next
  end

  num_1
end

def subtract(num_1, num_2)
  num_2.times do 
    num_1 = num_1.pred
  end

  num_1
end

def multiply(num_1, num_2)
  sum = 0
  num_2.times do 
    sum = add(sum, num_1)
  end

  sum
end

def divide(num_1, num_2)
  quotient = 0

  while num_1 > 0
    num_1 -= num_2
    quotient += 1
  end

  quotient
end

