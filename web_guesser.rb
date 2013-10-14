require "sinatra"

def random_num_generator
  "The SECRET NUMBER is #{rand(100)}"
end

get '/' do
  random_num_generator
end
