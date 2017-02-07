class Room
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String, required: true
  property :address,      Text, required: true, unique: true
  property :description,  Text
  property :price,        Integer, required: true

  belongs_to :user
  has n, :calendardates, through: Resource

  def dates_booked
    dates = []
    calendardates.each { |d| dates << d }
  end

  def owner
    user
  end

  def booked?(date)
    calendardates.any? { |d| d == date}
  end
end
