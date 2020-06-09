class Api::HeroesController < ApplicationController
  def index
    @heroes = HTTParty.get('https://api.opendota.com/api/heroes')
  end

  def show
    @matches = HTTParty.get("https://api.opendota.com/api/heroes/#{params[:hero_id]}/matches")
    redirect_to heroes_path if @matches.body == '[]'
  end
end
