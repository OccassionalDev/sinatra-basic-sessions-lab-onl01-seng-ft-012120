require_relative 'config/environment'

class App < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, "test"
  end 
  
  post '/checkout' do 
    session[:item] = params[:item]
    @session = session[:item]
    
end