# ask the user for loan amount, APR, and duration
# calculate monthly interest rate
# calculate loan duration in months
# output the result
# // run code through Rubocop

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i() != 0
end

prompt("Welcome to my Auto and Mortgage Loan Calculator! Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure you use a valid name.")
  else
    break
  end
end

prompt("Hi there, #{name}!")

loop do # main loop
  loan_amount = ''
  loop do
    prompt("How much do you want to borrow? (ex. $25,000 = 25000)")
    loan_amount = Kernel.gets().chomp

    if valid_number?(loan_amount)
      break
    else
      prompt("Hmm... that doesn't look like a valid amount.")
    end
  end

  repayment_term = ''
  loop do
    prompt("How long do you want to repay the loan? (in years)")
    repayment_term = (Kernel.gets().chomp)

    if valid_number?(repayment_term)
      break
    else
      prompt("Hmm... that doesn't look like a valid repayment term.")
    end
  end

  interest_rate = ''
  loop do
    prompt("At what APR are you borrowing? (ex. 7.50 for 7.50%)")
    interest_rate = Kernel.gets().chomp

    if valid_number?(interest_rate)
      break
    else
      prompt("Hmm... that doesn't look like a valid interest rate.")
    end
  end

  prompt("Calculating your loan details...")

  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = repayment_term.to_i() * 12

  monthly_payment = loan_amount.to_f() *
                    (monthly_interest_rate * (1 + monthly_interest_rate)**-months.to_i) /
                    (1 - (1 + monthly_interest_rate)**-months.to_i)

  prompt("Your monthly payment will be $#{format('%02.2f', monthly_payment)}.")

  prompt("Do you want to perform another calculation (Y to calculate again)?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the loan calculator. Good bye!")
