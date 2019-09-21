require_relative 'config/environment'

configure do
  enable :Sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base
end
