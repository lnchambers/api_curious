class SessionsController < ApplicationController
  def new
    redirect_to '/auth/eve_o'
  end

  def create
    auth_hash = request.env['omniauth.auth']
    binding.pry
    EveUser.create(auth_hash)
    redirect_to user_dashboard_path
  end
end
