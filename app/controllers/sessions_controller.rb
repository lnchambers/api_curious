class SessionsController < ApplicationController
  def new
    redirect_to '/auth/eve_o'
  end

  def create
    auth_hash = request.env['omniauth.auth']
    EveUser.new(auth_hash).create
    redirect_to user_path(current_user)
  end
end
