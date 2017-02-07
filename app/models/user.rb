require 'bcrypt'

class User
  include DataMapper::Resource
  
  def self.authenticate(email, password)
    user = first(email: email)
    if user && BCrypt::Password.new(user.password_digest) == password
      user
    else
      nil
    end
  end
  
  attr_reader :password
  attr_accessor :password_confirmation

  validates_confirmation_of :password

  property :id, Serial
  property :email,          String,required: true, format: :email_address, unique: true
  property :name,           String,required: true
  property :user_name,      String,required: true, unique: true
  property :password_digest,String,required: true, length: 60

  has n, :rooms
  has n, :bookings
  
  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end
end
