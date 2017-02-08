class Makersbnb < Sinatra::Base

  get '/bookings' do
    slim :'bookings/index'
    @bookings = current_user.bookings

  end


end
