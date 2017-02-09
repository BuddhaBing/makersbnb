class Makersbnb < Sinatra::Base

  get '/bookings' do
    @bookings = Booking.all(id: current_user.id)
    slim :'bookings/index'
  end

  post '/bookings' do
    #TODO Input database stuff once date ranges implemented
    redirect '/bookings'
  end
end
