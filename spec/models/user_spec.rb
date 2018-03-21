require 'rails_helper'

RSpec.describe User, type: :model do
  it { should validate_presence_of(:character_owner_hash) }
  it { should have_many(:characters)}
end
