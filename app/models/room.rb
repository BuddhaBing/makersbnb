class Room
  include DataMapper::Resource

  property :id,           Serial
  property :name,         String, required: true
  property :address,      Text, required: true
  property :description,  Text
  property :price,        Integer, required: true

  belongs_to :user
  has n, :dates, through: Resource

end
