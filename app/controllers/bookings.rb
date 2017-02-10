class Makersbnb < Sinatra::Base

  get '/bookings' do
    @bookings = Booking.all(user_id: session[:user_id])
    @rooms = Room.all(user_id: session[:user_id])
    slim :'bookings/index'
  end

  post '/bookings' do
    date = DateRange.first_or_create(start_date: params[:from],
                              end_date: params[:to])
    Booking.create(user_id: session[:user_id],
                   room_id: params[:room_id],
                   date_range_id: date.id)
    redirect '/bookings'
  end

  get '/bookings/update/' do
    slim :'bookings/confirm'
    redirect '/bookings'
  end

end
