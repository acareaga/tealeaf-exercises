mountains = {Canada: "Whistler", US: "Mt. Baker"}

mountains.each_key { |key| puts key }
mountains.each_value { |value| puts value}
mountains.each { |key, value| puts "The best mountain in #{key} is #{value}"}
