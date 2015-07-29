# Exercise 2 from Loops and Iterators

x = ''

while x != "NO" do
  puts "Do you want to ride the horse?"
  ans = gets.chomp
  puts "Sounds great. Will you walk if something happens to your horse?"
  x = gets.chomp
    break
end
