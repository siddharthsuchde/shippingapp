class User < ActiveRecord::Base
  has_many :orders
  has_secure_password validations: false
  validates :username, presence: true, uniqueness: true
  validate :password, presence: true, length: {minimum: 3}, on: :create
end