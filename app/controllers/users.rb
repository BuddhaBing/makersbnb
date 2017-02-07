class Makersbnb < Sinatra::Base

  get '/users/new' do
    @user = User.new
    slim :'users/new'
  end

  post '/users' do
    @user = User.create(email: params[:email],
                        name: params[:name],
                        user_name: params[:username],
                        password: params[:password],
                        password_confirmation: params[:password_confirmation])
    @user.save
    session[:user_id] = @user.id
    redirect '/rooms'
  end
end
