class Makersbnb < Sinatra::Base

  get '/bookings' do
    slim :'bookings/index'
  end
end
