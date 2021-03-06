# #Guess the number

# ###Prompt:
# - Create a ruby file `guess_the_number.rb`
# - You are to generate a basic "guess my number" game.  The computer will pick a random number between 0 and 10.  The user will guess the number until they guess correctly.

# ###Specification:
# - The user should be asked to guess a number
# - If the user's guess is correct, the user should see a congratulatory message
# - If the user's guess is not correct, the user should be asked to guess the number again.
# - This should be done in a new file called guess_the_number.rb

# ###Bonuses
# - When the user guesses incorrectly, tell them whether they guess too high or too low
# - When the user guesses the number correctly, tell them how many guesses it took them.


puts "Please guess a number from between 0 and 10"

number = rand(0..10)

guess = gets.chomp.to_i

count = 0


while guess != number 
  if guess > number
    puts "Your guess was too high!"
  else
    puts "Your guess was too low!"
  end
  puts "Please guess again"
  guess = gets.chomp.to_i
  count += 1
end

  puts "Conrats! You guessed correct"
  puts "It took you #{count} guess/guesses."