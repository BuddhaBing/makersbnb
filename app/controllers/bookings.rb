class Makersbnb < Sinatra::Base

  get '/bookings' do
    @requested_bookings = Booking.all(user: current_user)

    @received_bookings = Booking.all()
    @received_bookings = @received_bookings.select{|booking| booking.room.user === current_user}
    slim :'bookings/index'
  end

  post '/bookings' do
    #TODO Input database stuff once date ranges implemented
    redirect '/bookings'
  end
end
