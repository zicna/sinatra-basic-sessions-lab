require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "secret"
       end
       

    get '/' do 
        erb :index
    end

    post '/checkout' do 
        @item = params[:item]
        @session = session
        @session[:item] = @item

        erb :show
    end
end