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
  string.to_i.to_s == string
end

puts "To how many decimal places would you like to get pi?"
decimal_places = gets.chomp

# confirm that value is an integer string
until valid_integer?(decimal_places)
  puts "Enter a valid integer."

  decimal_places = gets.chomp
end

decimal_places = decimal_places.to_i

decimal_pi = BigMath.PI(decimal_places + 1).round(decimal_places).to_s
pi = "3"
pi += "." + decimal_pi[3..-3] if decimal_places >= 1

puts "pi = #{pi}"
