require 'bigdecimal'
require 'bigdecimal/math'

# this is way too slow to be practical so I didn't use it
#   def calculate_pi
#     pi = 0
#     10_000_000.times do |i|
#       pi += 4.0 / (1 + 4 * i) - 4.0 / (3 + 4 * i)
#     end
  
#     pi 
#   end

def valid_integer?(string)
  string.to_i.to_s == string && string.to_i > 0
end

puts "To how many digits would you like to get pi?"
digits = gets.chomp

# confirm that value is an integer string
until valid_integer?(digits)
  puts "Enter a valid integer."

  digits = gets.chomp
end

digits = digits.to_i

decimal_pi = BigMath.PI(digits).to_s


pi = decimal_pi[2]
# only add a decimal to the string if requested digits > 1
pi += "." + decimal_pi[3..digits + 1] if digits > 1

# handle rounding of last digit
if decimal_pi[digits + 2] >= "5"
  # add 1
  pi[-1] = (pi[-1].to_i + 1).to_s
end

puts "pi = #{pi}"
