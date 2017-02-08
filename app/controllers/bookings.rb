class Makersbnb < Sinatra::Base

  get '/bookings' do
    slim :'bookings/index'
  end
  
  post '/bookings' do
    #TODO Input database stuff once date ranges implemented
    redirect '/bookings'
  end
end
