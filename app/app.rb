require 'data_mapper'
require 'sinatra/base'
require_relative 'models/speaker'

## This class is responsible for managing the Speakup app
class Speakup < Sinatra::Base
  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    @speakers = Speaker.all
    erb :index
  end

  get '/signup' do
    erb :signup
  end

  post '/signup' do
    speaker = Speaker.create(email: params[:email], password: params[:password])
    session[:user_id] = speaker.id
    redirect to('/profile')
  end

  get '/profile' do
    erb :profile
  end

  post '/createprofile' do
    speaker = Speaker.first(id: session[:user_id])
    speaker.update(name: params[:name])
    speaker.save
    redirect to('/')
  end
end
