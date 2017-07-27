require 'sinatra'

class Speakup < Sinatra::Base
  get '/' do
    'Hello world!'
  end
end
