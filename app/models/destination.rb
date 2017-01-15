class Destination < ApplicationRecord
  belongs_to :user
  has_many :destination_items
  has_many :items, through: :destination_items

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
      almanac_weather_data
    else
      recent_weather_data
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
end