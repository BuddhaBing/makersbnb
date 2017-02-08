class Room
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String, required: true
  property :address,      Text, required: true, unique: true
  property :description,  Text
  property :price,        Integer, required: true

  belongs_to :user
  has n, :DateRanges, through: Resource

  def dates_booked
  end

  def booked?(date)
  end
end
