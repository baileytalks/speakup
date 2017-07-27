# require 'bcrypt'
# require 'data_mapper'
# require 'dm-postgres-adapter'
# require 'dm-validations'
#
# class Speaker
#   include DataMapper::Resource
#
#   property :id,              Serial
#   property :email,           String,  required: true, unique: true
#   property :password_digest, Text,    required: true
#
#   def password=(password)
#     self.password_digest = BCrypt::Password.create(password)
#   end
#
#   def self.authenticate(email, password)
#     speaker = first(email: email)
#     if speaker && BCrypt::Password.new(user.password_digest) == password
#       speaker
#     else
#       nil
#     end
#   end
# end
