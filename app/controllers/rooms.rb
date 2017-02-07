class Makersbnb < Sinatra::Base

  get '/rooms/new' do
    slim :'rooms/new'
  end

  post '/rooms' do
    Room.create(name: params[:name],
        address: params[:address],
        description: params[:description],
        price: params[:price])
    "Room Listed" # TODO update this to a path later when we
                  # decide where it will redirect following room listing
  end

end
