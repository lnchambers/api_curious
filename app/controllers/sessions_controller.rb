class SessionsController < ApplicationController
  def new
    redirect_to '/auth/eve_o'
  end

  def create
    auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by(character_owner_hash: auth_hash["info"]["character_owner_hash"])
    session[:user_id] = user.id
    EveUser.new(auth_hash, user).create
    redirect_to user_path(user)
  end
end
