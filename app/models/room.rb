class Room
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String, required: true
  property :address,      Text, required: true
  property :description,  Text
  property :price,        Integer, required: true

  belongs_to :user
  has n, :calendardates, through: Resource
  
  def dates_booked
    dates = []
    self.calendardates.each { |d| dates << d }
    dates
  end
  
end
