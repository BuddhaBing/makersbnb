class Makersbnb < Sinatra::Base

  get '/sessions/new' do
    @body_class_name = "home"
    slim :'/sessions/new'
  end

  post '/sessions' do
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect '/'
    else
      flash.keep[:notice] = "The email or password entered is incorrect"
      redirect '/sessions/new'
    end
  end

  get '/sessions/delete' do
    slim :'sessions/delete'
  end

end
