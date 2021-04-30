class User < ApplicationRecord
  has_secure_password
  has_many :favorites
  has_many :houses, through: :favorites

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :name
  validates_uniqueness_of :name
end
