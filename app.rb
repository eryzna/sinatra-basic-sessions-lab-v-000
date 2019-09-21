require_relative 'config/environment'

configure do
  enable :Sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/checkout' do
    @item = params[:item_name]
    @session=session
    session [:item]
  
  end
end
