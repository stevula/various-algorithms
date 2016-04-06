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
end

