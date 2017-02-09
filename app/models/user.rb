require 'bcrypt'

class User
  include DataMapper::Resource

  attr_reader :password
  attr_accessor :password_confirmation

  property :id,             Serial
  property :email,          String,required: true, format: :email_address, unique: true
  property :name,           String,required: true
  property :user_name,      String,required: true, unique: true
  property :password_digest,String,required: true, length: 60

  validates_confirmation_of :password
  validates_with_method :password, method: :password_requirements_check

  has n, :rooms
  has n, :bookings

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def password_requirements_check
    return true if @password.nil?
    if @password.length < 8
      self.errors.add(:password, "Password needs to be 8 chars or more")
      return false
    end
    true
  end

  def self.authenticate(email, password)
    user = first(email: email)
    if user && BCrypt::Password.new(user.password_digest) == password
      user
    else
      nil
    end
  end
end
