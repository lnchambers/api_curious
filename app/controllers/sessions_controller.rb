class SessionsController < ApplicationController
  def new
    redirect_to 'http://localhost:3000/auth/crest'
  end

  def create
    auth_hash = request.env['omniauth.auth']
  end
end
