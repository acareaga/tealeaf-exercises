VALID_CHOICES = %w(rock (r) paper (p) scissors (sc) lizard (l) spock (sp))

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first == ('rock' or 'r') && second == ('scissors' or 'sc')) ||
    (first == ('paper' or 'p') && second == ('rock' or 'r')) ||
    (first == ('scissors' or 'sc') && second == ('paper' or 'p')) ||
    (first == ('rock' or 'r') && second == ('lizard' or 'l')) ||
    (first == ('lizard' or 'l') && second == ('spock' or 'sp')) ||
    (first == ('scissors' or 'sc') && second == ('lizard' or 'l')) ||
    (first == ('lizard' or 'l') && second == ('paper' or 'p')) ||
    (first == ('paper' or 'p') && second == ('spock' or 'sp')) ||
    (first == ('spock' or 'sp') && second == ('rock' or 'r'))
end

def display_results(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()
    break unless choice.downcase().start_with?('r' 'p' 'sc' 'sp' 'l')

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Good bye!")

# Initial debug, robocop C 7 offenses
