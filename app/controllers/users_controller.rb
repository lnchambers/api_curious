class UsersController < ApplicationController
  def show
    encoded = "Basic #{Base64.encode64("#{ENV["EVE_CLIENT_ID"]}:#{ENV["EVE_SECRET_KEY"]}").gsub("\n", "")}"
    refresh = Faraday.post("https://login.eveonline.com/oauth/token?grant_type=refresh_token&refresh_token=#{current_user.refresh_token}", :headers => {Authorization: "#{encoded}"})
    binding.pry
    response = Faraday.get("https://esi.tech.ccp.is/latest/characters/#{current_user.id}/portrait/")
    parsed = JSON.parse(response.body, symbolize_names: true)
    @image = parsed[:px256x256]
    response = Faraday.get("https://esi.tech.ccp.is/latest/characters/#{current_user.id}/wallet/?token=#{current_user.token}")
    parsed = JSON.parse(response.body, symbolize_names: true)
    @wallet = parsed
    response = Faraday.get("https://api.chucknorris.io/jokes/random")
    parsed = JSON.parse(response.body)
    @joke = parsed["value"]
  end
end
