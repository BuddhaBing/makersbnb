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

  def bookable?(booking_date_range)
    date_ranges.each do |date_range|
      return false unless date_range.overlaps? booking_date_range
    end
    true
  end
end
