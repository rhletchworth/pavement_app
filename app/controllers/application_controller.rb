class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def index
    response = HTTParty.get("http://api.songkick.com/api/3.0/metro_areas/17913-us-raleigh/calendar.json?apikey=#{Figaro.env.songkick_api_key}")

    @events = response['resultsPage']['results']['event']
  end
  
end
