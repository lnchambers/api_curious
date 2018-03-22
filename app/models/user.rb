class User < ApplicationRecord
  validates_presence_of :character_owner_hash
  validates_uniqueness_of :character_owner_hash
  has_many :characters
end
