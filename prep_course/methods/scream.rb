# scream.rb

def scream(words)
  words = words + "!!!!"
  puts words
end

p scream("Yipeee")

# fixed "doesn't print" issue by add p to line 9. returns nil
