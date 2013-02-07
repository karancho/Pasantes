class User < ActiveRecord::Base
  attr_accessible :dni, :locality_id, :name, :password_digest, :surname, :email, :password, :password_confirmation

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
