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

  get '/rooms/:room_id' do
    @room = Room.first(id: params[:room_id])
    slim :'rooms/individual'
  end

  patch '/rooms' do
    @room = Room.first(id: params[:room_id])
    @room.date_ranges << DateRange.first_or_create(start_date: params[:start_date],end_date: params[:end_date])
    @room.save
  end
end
