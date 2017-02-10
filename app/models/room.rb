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
    return false unless within_slot?(booking_date_range)
    return false if conflicts_with_other_booking(booking_date_range)
    true
  end

  private

  def within_slot?(booking_date_range)
    date_ranges.each do |date_range| #checks wether date is entirely within an available slot
      return true if date_range.covers? booking_date_range
    end
    false
  end

  def conflicts_with_other_booking(booking_date_range)
    bookings.each do |booking| #checks wether date is entirely within an available slot
      return true if booking.date_range.overlaps? booking_date_range
    end
    false
  end
end
