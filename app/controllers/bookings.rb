class Makersbnb < Sinatra::Base
  get '/bookings' do
    @bookings = Booking.all(user_id: session[:user_id])
    @rooms = Room.all(user_id: session[:user_id])
    slim :'bookings/index'
  end

  post '/bookings' do
    date = DateRange.first_or_create(start_date: params[:from],
                                     end_date: params[:to])
    room = Room.first(id: params[:room_id])
    if date_valid?(params[:from], params[:to]) && room.bookable?(date)
      Booking.create(user_id: session[:user_id],
                     room_id: params[:room_id],
                     date_range_id: date.id)
      redirect '/bookings'
    else
      flash.keep[:notice] = 'The dates entered are not available'
      redirect "/rooms/#{params[:room_id]}"
    end
  end

end
