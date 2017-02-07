class Makersbnb < Sinatra::Base

  get '/sessions/new' do
      
  end

  post '/sessions' do

  end

  delete '/sessions' do
    session[:user_id] = nil
    flash.keep[:notice] = 'Goodbye!'
    redirect '/'
  end

end
