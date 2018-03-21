require 'rails_helper'

RSpec.describe Character, type: :model do
  it { should validate_presence_of(:token) }
  it { should validate_uniqueness_of(:token) }
  it { should validate_presence_of(:refresh_token) }
  it { should validate_uniqueness_of(:refresh_token) }
  it { should validate_presence_of(:expires_at) }
  it { should validate_presence_of(:character_owner_hash) }
end
