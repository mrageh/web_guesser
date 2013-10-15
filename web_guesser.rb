require "sinatra"
require 'sinatra/reloader'

def check_guess(guess)
  number = rand(100)
  if guess > (number+5)
    message = "Way too high!"
  elsif (guess-5) < number
    message = "Way too low!"
  elsif guess == number
    message = "You got it right!"
    "The SECRET NUMBER is #{number}"
  elsif guess > number
    message = "Too high!"
  elsif guess < number
    message = "Too low!"
  end
end

set :secret_number, rand(100)
number = rand(100)
get '/' do
  guess = params['guess'].to_i
  message = check_guess(guess)
  erb :index, :locals => {:number => number,
                          :message => message
                        }
end
