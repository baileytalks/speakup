require 'sinatra/base'
require_relative 'models/speaker'
require 'data_mapper'

## This class is responsible for managing the Speakup app
class Speakup < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    Speaker.create(email: params[:email], password: params[:password])
    redirect to('/')
  end
end
