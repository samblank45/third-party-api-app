class Api::WeatherController < ApplicationController

  def show
    @weather = HTTP.get("https://api.weatherbit.io/v2.0/current?city=Boston,MA&key=#{Rails.application.credentials.weather_api[:api_key]}")
    render json: @weather.parse
  end
end
