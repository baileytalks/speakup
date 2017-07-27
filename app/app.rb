require 'sinatra'
require_relative 'models/speaker'

class Speakup < Sinatra::Base
  get '/' do
    erb :index
  end
end
