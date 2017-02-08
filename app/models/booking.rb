class Booking
  include DataMapper::Resource

  property :id, Serial
  property :confirmed, Boolean

  belongs_to :user, required: true
  belongs_to :room, required: true
  belongs_to :dateRange, required: true

end
