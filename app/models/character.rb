class Character < ApplicationRecord
  validates_presence_of :token, :refresh_token, :expires_at, :character_owner_hash, :name
  validates_uniqueness_of :token, :refresh_token, :name
  belongs_to :user
end
