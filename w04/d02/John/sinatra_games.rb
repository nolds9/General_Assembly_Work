require 'sinatra'
require 'sinatra/reloader'

get '/toss' do
  ["Heads", "Tails"].sample
end

get '/dice_roll' do
  "#{(1..6).to_a.sample}"
end

get '/magic8ball/:question' do
  responses = ["It is certain", "It is decidedly so", "Without a doubt", "Yes definitely",
     "You may rely on it", "As I see it yes", "Most likely", "Outlook good",
     "Yes", "Signs point to yes", "Reply hazy try again", "Ask again later",
     "Better not tell you now", "Cannot predict now", "Concentrate and ask again",
     "Don't count on it", "My reply is no", "My sources say no",
     "Outlook not so good", "Very doubtful"]

  "#{params[:question].capitalize}? #{responses.sample}."
end

get '/rps/:user_hand' do
  winner = {
    "rock" => "paper",
    "scissors" => "rock",
    "paper" => "scissors"
  }

  computer_hand = ["rock", "paper", "scissors"].sample

  if computer_hand == params[:user_hand]
    result = "tie"
  elsif computer_hand == winner[params[:user_hand]]
    result = "lose"
  else
    result = "win"
  end

  "The computer chose #{computer_hand}. You #{result}!"
end
