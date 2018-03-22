class EveUser

  def initialize(auth_hash, user)
    @auth_hash = auth_hash
    @user = user
  end

  def create
    Character.find_or_create_by(
      id: auth_hash["info"]["character_id"],
      user: user,
      scopes: auth_hash["info"]["scopes"],
      name: auth_hash["info"]["name"],
      token: auth_hash["credentials"]["token"],
      refresh_token: auth_hash["credentials"]["refresh_token"],
      expires_at: auth_hash["info"]["expires_on"],
      character_owner_hash: auth_hash["info"]["character_owner_hash"]
    )
  end

  private

    attr_reader :auth_hash, :user

end
