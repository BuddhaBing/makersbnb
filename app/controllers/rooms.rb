class Makersbnb < Sinatra::Base

  get '/rooms/new' do
    slim :'rooms/new'
  end

  get '/rooms' do
    @rooms = Room.all
    slim :'rooms/index'
  end

  get'/rooms/:id' do
    @room = Room.first(id: params[:id])
    slim :'bookings/new'
  end

  post '/rooms' do

    room = Room.create(name: params[:name],
        address: params[:address],
        description: params[:description],
        price: params[:price],
        user: current_user)
    redirect ('/rooms')
  end

end
