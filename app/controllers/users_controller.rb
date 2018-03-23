class UsersController < ApplicationController
  def show
    response = Faraday.get("https://esi.tech.ccp.is/latest/characters/#{current_user.characters.first.id}/portrait/")
    parsed = JSON.parse(response.body, symbolize_names: true)
    @image = parsed[:px256x256]
    response = Faraday.get("https://esi.tech.ccp.is/latest/characters/#{current_user.characters.first.id}/wallet/?token=#{current_user.characters.first.token}")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
