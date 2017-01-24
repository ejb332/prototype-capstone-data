class Destination < ApplicationRecord
  belongs_to :user
  has_many :destination_items
  has_many :items, through: :destination_items

  validates :country, length: { maximum: 2 }
  validates :state, length: { maximum: 2 }
  validates :zip, numericality: { only_integer: true }


  def ten_plus?
    start_date > Time.now + 10.days
  end

  def almanac_weather_data
    puts "http://api.wunderground.com/api/#{ENV['WU_API_KEY']}/planner_#{date_url_start}#{date_url_end}/q/#{state}/#{city}.json"
    Unirest.get("http://api.wunderground.com/api/#{ENV['WU_API_KEY']}/planner_#{date_url_start}#{date_url_end}/q/#{state}/#{city}.json").body
  end

  def recent_weather_data
    Unirest.get("http://api.wunderground.com/api/#{ENV['WU_API_KEY']}/forecast10day/q/#{state}/#{city}.json").body
  end

  def weather_data
    if ten_plus?
      data = almanac_weather_data
      @current_temp = almanac_weather_data["trip"]["temp_high"]["avg"]["F"].to_i
      @current_precip = almanac_weather_data["trip"]["chance_of"]["chanceofprecip"]["percentage"].to_i
      data
    else
      data = recent_weather_data
      @current_temp = recent_weather_data["forecast"]["simpleforecast"]["forecastday"][0]["high"]["fahrenheit"].to_i
      @current_precip = recent_weather_data["forecast"]["simpleforecast"]["forecastday"][0]["pop"].to_i
      data
    end
  end

  def date_pretty_start
    start_date.strftime("%A %B %e %Y")
  end

  def date_pretty_end
    end_date.strftime("%A %B %e %Y")
  end

  def date_url_start
    start_date.strftime("%m%e")
  end

  def date_url_end
    end_date.strftime("%m%e")
  end

  def num_days
    ((end_date - start_date)/60/60/24).to_i
  end

  def set_background
    # puts "*" * 50
    # p @current_temp
    # p @current_precip
    # puts "*" * 50
    if @current_temp >= 75
      return "location-hot"
    elsif @current_temp >= 75 && @current_precip >= 50
      return "location-hot-rainy"
    elsif @current_temp < 75 && @current_temp >= 55
      return "location-warm"
    elsif @current_temp < 75 && @current_temp >= 55 && @current_precip >= 50
      return "location-warm-rainy"
    elsif @current_temp < 55 && @current_temp >= 40
      return "location-cool"
    elsif @current_temp < 55 && @current_temp >= 40 && @current_precip >= 50
      return "location-cool-rainy"
    else
      return "location-cold"
    end
  end
  # def country_flag
  #   Unirest.get("http://www.geognos.com/api/en/countries/flag/#{country}.png").body
  # end
end