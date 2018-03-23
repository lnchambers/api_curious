class EveUser

  def initialize(auth_hash)
    @auth_hash = auth_hash
  end

  def create
    Character.find_or_create_by(
      id: auth_hash["info"]["character_id"],
      scopes: auth_hash["info"]["scopes"],
      name: auth_hash["info"]["name"],
      token: auth_hash["credentials"]["token"],
      refresh_token: auth_hash["credentials"]["refresh_token"],
      expires_on: auth_hash["info"]["expires_on"]
    )
  end

  private

    attr_reader :auth_hash

end
