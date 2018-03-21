class EveUser

  def initialize(auth_hash)
    @auth_hash = auth_hash
  end

  def create
    binding.pry
  end

  private

    attr_reader :auth_hash

end
