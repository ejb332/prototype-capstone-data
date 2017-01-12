class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :destinations

  def select_wardrobe(input_temp)
    if input_temp >= 75
      return items
    elsif input_temp < 75 && input_temp >= 55
      return items
    elsif input_temp < 55 && input_temp >= 40
      return items
    else
      return items
    end
  end
end
