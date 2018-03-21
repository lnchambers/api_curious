class User < ApplicationRecord
  validates_presence_of :character_owner_hash
  has_many :characters
end
