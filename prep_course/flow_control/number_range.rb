# takes number 0 to 100 and reports range 0 to 50, 50 to 100, or 100+

puts "Please enter a number between 0 and 100:"
number = gets.chomp.to_i

if number < 0
  puts "#{number} is negative. Please follow directions."
elsif number <= 50
  puts "#{number} is more than 0 and less than or equal to 50"
elsif number <= 100
  puts "#{number} is more than 50 and less than or equal to 100"
else
  puts "#{number} is more than 100"
end
