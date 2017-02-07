class Makersbnb < Sinatra::Base

  get '/sessions/new' do
    slim '/partials/header'

  end

  post '/sessions' do

  end

  delete '/sessions' do
    session[:user_id] = nil
    flash.keep[:notice] = 'Goodbye!'
    redirect '/'
  end

end
