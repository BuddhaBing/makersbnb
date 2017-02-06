class Calendardate
  include DataMapper::Resource

  property :id, Serial
  property :date, Date, required: true

  has n, :rooms, through: Resource

end
