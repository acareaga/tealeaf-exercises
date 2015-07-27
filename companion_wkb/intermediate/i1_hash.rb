statement = "The Flintstones Rock"

result = { }
letters = ('A'...'Z').to_a + ('a'...'z').to_a
letters.each do |letter|
  letter_feq = statement.scan(letter).count
  p result[letter] = letter_feq if letter_feq > 0
end
