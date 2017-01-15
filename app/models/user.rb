class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :destinations

  def select_wardrobe(input_temp)
    if input_temp >= 75
      sandals = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-shirts").items.sample
      shorts = items.sample
      return [sandals, tshirt, shorts]
    elsif input_temp < 75 && input_temp >= 55
      shoes = items.sample
      tshirt = items.sample
      pants = items.sample
      return [shoes, tshirt, pants]
    elsif input_temp < 55 && input_temp >= 40
      shoes = items.sample
      tshirt = items.sample
      shirt = items.sample
      pants = items.sample
      coat = items.sample
      return [shoes, tshirt, shirt, pants, coat]
    else
      return []
    end
  end

end
