class User < ApplicationRecord
    has_secure_password 
    has_many :favorites
    has_many :houses, :through => :favorites

    validates_presence_of :username
    validates_uniqueness_of :username
end
