class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :destinations

  def select_wardrobe(input_temp)
    if input_temp >= 75
      sandals = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-shirts").items.sample
      shorts = Category.find_by(name: "Shorts").items.sample
      return [sandals, tshirt, shorts]
    elsif input_temp < 75 && input_temp >= 55
      shoes = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-shirts").items.sample
      pants = Category.find_by(name: "Pants").items.sample
      jacket = Category.find_by(name: "Outerwear-light").items.sample
      return [shoes, tshirt, pants, jacket]
    elsif input_temp < 55 && input_temp >= 40
      shoes = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-shirts").items.sample
      shirt = Category.find_by(name: "Long-sleeved shirts").items.sample
      pants = Category.find_by(name: "Pants").items.sample
      coat = Category.find_by(name: "Outerwear-medium").items.sample
      return [shoes, tshirt, shirt, pants, coat]
    else
      shoes = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-shirts").items.sample
      shirt = Category.find_by(name: "Long-sleeved shirts").items.sample
      pants = Category.find_by(name: "Pants").items.sample
      coat = Category.find_by(name: "Outerwear-heavy").items.sample
      return [shoes, tshirt, shirt, pants, coat]
    end
  end

end
