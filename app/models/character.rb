class Character < ApplicationRecord
  validates_presence_of :token, :refresh_token, :expires_on, :name
  validates_uniqueness_of :token, :refresh_token, :name
end
