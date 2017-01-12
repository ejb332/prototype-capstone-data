class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :destinations

  def select_wardrobe(input_temp)
    if input_temp >= 75
      sandals = items.sample
      tshirt = items.sample
      shorts = items.sample
      return [sandals, tshirt, shorts]
    elsif input_temp < 75 && input_temp >= 55
      shoes = items.sample
      tshirt = items.sample
      pants = items.sample
      return [shoes, tshirt, pants]
    elsif input_temp < 55 && input_temp >= 40
      return items
    else
      return items
    end
  end
end
