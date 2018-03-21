class Character < ApplicationRecord
  validates_presence_of :token, :refresh_token, :expires_at, :character_owner_hash
  validates_uniqueness_of :token, :refresh_token
  belongs_to :user
end
