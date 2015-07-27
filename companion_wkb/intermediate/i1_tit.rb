mountains = ["Whistler Blackcomb", "Mt. Baker", "Stevens Pass"]

mountains.split.map { |mountain| mountain.downcase.capitalize }.join(' ')
p mountains
