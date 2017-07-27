require 'bcrypt'
require 'data_mapper'
require 'dm-postgres-adapter'
require 'dm-validations'

## This class knows how to create a speaker in the database
class Speaker
  include DataMapper::Resource

  property :id,              Serial
  property :email,           String,  required: true, unique: true
  property :password_digest, Text,    required: true

  validates_format_of :email, as: :email_address

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def self.authenticate(email, password)
    speaker = first(email: email)
    speaker if
      speaker && BCrypt::Password.new(speaker.password_digest) == password
  end
end

DataMapper.setup(:default, 'postgres://localhost/speakup_test')
DataMapper.finalize
DataMapper.auto_upgrade!
