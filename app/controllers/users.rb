class Makersbnb < Sinatra::Base
  
  get '/users/new' do
    @user = User.new
    slim :'users/new'
  end

  post '/users' do
    @user = User.create(email: params[:email],
                        name: params[:name],
                        user_name: params[:username],
                        password_digest: params[:password])
    @user.save
    session[:user_id] = @user.id
    redirect '/users/new'
  end
end
