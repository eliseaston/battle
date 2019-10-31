require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session['player1'] = params[:player1]
    session['player2'] = params[:player2]
    # erb(:play)
    redirect"/play"
  end

get '/play' do
    erb(:play)
  end

# post '/attacked' do
#   redirect"/attack"
# end

  get '/attack' do
    @player1 = session[:player1]
    @player2 = session[:player2]
    erb(:attack)
  end

  run! if app_file == $0

end
