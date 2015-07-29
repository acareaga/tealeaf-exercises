# case_statement.rb <-- refactored with no case argument

a = 6

answer = case
when 5 == 5
  "a is 5"
when 6 == 6
  "a is 6"
else
  "a is neither 5, nor 6"
end

p answer
