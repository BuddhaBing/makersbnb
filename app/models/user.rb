class User
  include DataMapper::Resource

  property :id, Serial
  property :email,          String,required: true, unique: true
  property :user_name,      String,required: true, unique: true
  property :password_digest,String,required: true, length: 60,

  has n, :rooms
  has n, :bookings
end
