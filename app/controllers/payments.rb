class Makersbnb < Sinatra::Base
      
  get '/payments/new' do
    slim :'payments/new'
  end
end
