puts "How many dollars did the purchase cost?"
dollars_cost = gets.chomp.to_i

puts "How many cents did the purchase cost?"
cents_cost = gets.chomp.to_i
cents_cost += dollars_cost * 100

puts "How many dollars did you pay?"
dollars_paid = gets.chomp.to_i

puts "How many cents did you pay?"
cents_paid = gets.chomp.to_i
cents_paid += dollars_paid * 100

COIN_VALUES = {
  quarter: 25,
  dime:    10,
  nickel:  5,
  penny:   1,
}

change_amounts = {
  quarter: 0,
  dime:    0,
  nickel:  0,
  penny:   0,
}

change = cents_paid - cents_cost

COIN_VALUES.each do |coin, value|
  change_amounts[coin], change = change.divmod(value)
end

change_amounts.each do |coin, amount|
  puts "#{coin.capitalize}: #{amount}"
end