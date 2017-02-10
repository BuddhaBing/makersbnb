class Room
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String, required: true
  property :address,      Text, required: true, unique: true
  property :description,  Text
  property :price,        Integer, required: true

  belongs_to :user
  has n, :bookings
  has n, :date_ranges, through: Resource

  def bookable?(date_range)
    #for each date in between dates run booked?
  end

  def booked?(date)
  end
end
