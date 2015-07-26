a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

a.each { |i| puts i if i > 5 }

new_a = a.select { |number| puts number % 2 != 0 }
