puts "How much does a tile cost?"
cost_per_tile = gets.chomp

# handle invalid inputs
while cost_per_tile.to_f == 0.0
  puts "Please enter a tile cost."
  cost_per_tile = gets.chomp
end

puts "How many tiles long is the surface?"
length = gets.chomp

# handle invalid inputs
while length.to_f == 0.0
  puts "Please enter a valid length."
  length = gets.chomp
end

puts "How many tiles wide is the surface?"
width = gets.chomp

# handle invalid inputs
while width.to_f == 0.0
  puts "Please enter a valid height."
  width = gets.chomp
end

tile_cost = length.to_f * width.to_f * cost_per_tile.to_f

puts "Total cost: $#{tile_cost.round(2)}"