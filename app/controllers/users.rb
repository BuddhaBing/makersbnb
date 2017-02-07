class Makersbnb < Sinatra::Base

  get '/users/new' do
    slim :'users/new'
    # @current_user = 'Pete'
  end

  post '/users' do
    @user = User.create(email: params[:email],
                        name: params[:name],
                        user_name: params[:username],
                        password_digest: params[:password])
    @user.save
  end
end
