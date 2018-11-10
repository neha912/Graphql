class User < ApplicationRecord
  # encrypt password
  has_secure_password
  #has_many :links
  # Validations
  validates_presence_of :name, :email, :password_digest
end
