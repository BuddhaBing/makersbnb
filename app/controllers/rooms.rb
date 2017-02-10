class Makersbnb < Sinatra::Base

  get '/rooms/new' do
    slim :'rooms/new'
  end

  get '/rooms' do
    @rooms = Room.all(user_id: session[:user_id])
    slim :'rooms/index'
  end

  get '/rooms/search' do
    @rooms = Room.all
    slim :'rooms/search'
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
    @date_range = @room.date_ranges
    slim :'rooms/individual'
  end

  patch '/rooms/dates' do
    @room = Room.first(id: params[:room_id])
    @room.date_ranges << DateRange.first_or_create(start_date: params[:start_date],end_date: params[:end_date])
    @room.save
    redirect "/rooms/#{params[:room_id]}"
  end

  patch '/rooms/edit' do
    @room = Room.first(id: params[:room_id])
    @room.user = @room.user
    @room.name = params[:name]
    @room.address = params[:address]
    @room.description = params[:description]
    @room.price = params[:price]
    @room.save
    redirect "/rooms/#{params[:room_id]}"
  end

end
