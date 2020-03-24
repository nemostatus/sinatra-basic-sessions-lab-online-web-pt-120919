require_relative 'config/environment'

class App < Sinatra::Base
  configure do  
  enable :sessions
  set :session_secret, "1m2n3b4v5cs"
  
  get '/' do 
   
    erb :index
  end
  
  post '/checkout' do
    @session = session
    @item = params["item"]
    @session["item"] = @item
end
end 
end 