# Rewrite exercise 3 using case statement.

def evaluate_num(num)
  if num < 0
    puts "#{num} is negative. Please follow directions"
  elsif num <= 50
    puts "#{num} is greater than 0 and less than or equal to 50."
  elsif num <= 100
    puts "#{num} is greater than 50 and less than or equal to 100."
  else
    puts "#{num} is greater than 100."
  end
end

def evaluate_num(num)
  if num < 0
    puts "#{num} is negative. Please follow directions."
  elsif num <= 50
    puts "#{num} is greater than 0 and less than or equal to 50."
  elsif num <= 100
    puts "#{num} is greater than 50 and less than or equal to 100."
  else
    puts "#{num} is greater than 100."
  end
end

def evaluate_case_num(num)
  case
  when num < 0
    puts "#{num} is negative. Please follow directions."
  when num <= 50
    puts "#{num} is greater than 0 and less than or equal to 50."
  when num <= 100
    puts "#{num} is greater than 50 and less than or equal to 100."
  else
    puts "#{num} is greater than 100."
  end
end

puts "Please enter a number between 0 and 100:"
number = gets.chomp.to_i

evaluate_num(number)
evaluate_case_num(number)
