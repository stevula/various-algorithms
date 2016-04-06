puts "Welcome to pi calculator!"
puts "To how many digits would you like to calculate pi?"
digits = gets.chomp

# confirm that value is an integer string
until digits.to_i.to_s == self
  digits = gets.chomp
end