class Makersbnb < Sinatra::Base

  get '/rooms/new' do
    slim :'rooms/new'
  end

  get '/rooms' do
    @rooms = Room.all
    slim :'rooms/index'
  end

  post '/rooms' do

    room = Room.create(name: params[:name],
        address: params[:address],
        description: params[:description],
        price: params[:price],
        user: current_user)
    "Room Listed" # TODO update this to a path later when we
              # decide where it will redirect following room listing
  end

  get '/rooms/:room_id' do
    @room = Room.first(id: params[:room_id])
    slim :'rooms/individual'
  end
end
