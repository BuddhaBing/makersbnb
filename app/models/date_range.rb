class DateRange
  include DataMapper::Resource

  property :id, Serial
  property :start_date, Date, required: true
  property :end_date, Date, required: true

  has n, :rooms, through: Resource

  def covers?(other)
    !((start_date > other.start_date) or (end_date < other.end_date))
  end
  def overlaps?(other)
    (start_date <= other.end_date) && (other.start_date <= end_date)
  end
end
