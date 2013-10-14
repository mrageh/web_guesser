require "sinatra"
require 'sinatra/reloader'

get '/' do
  nubmer = rand(100)
  erb :index, :locals => {:number => number}
end
