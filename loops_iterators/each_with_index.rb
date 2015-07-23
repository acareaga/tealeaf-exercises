# Exercise 3 from loops and irerators.

top_nw_mountain = ["Whistler", "Mt. Baker", "Stevens Pass", "Crystal Mountain"]

top_nw_mountain.each_with_index do | mountain, index |
  puts "#{index + 1}. #{mountain}"
end
