class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :destinations

  validates :email, :uniqueness => true

  def select_wardrobe(input_temp)
    if input_temp >= 75
      sandals = Category.find_by(name: "Sandals").items.sample
      tshirt = Category.find_by(name: "T-Shirts").items.sample
      shorts = Category.find_by(name: "Shorts").items.sample
      accessories = Category.find_by(name: "Accessories").items.sample
      return [sandals, tshirt, shorts, accessories]
    elsif input_temp < 75 && input_temp >= 55
      shoes = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-Shirts").items.sample
      pants = Category.find_by(name: "Pants").items.sample
      coats = Category.find_by(name: "Coats").items.sample
      accessories = Category.find_by(name: "Accessories").items.sample
      return [shoes, tshirt, pants, coats, accessories]
    elsif input_temp < 55 && input_temp >= 40
      shoes = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-Shirts").items.sample
      shirt = Category.find_by(name: "Shirts").items.sample
      pants = Category.find_by(name: "Pants").items.sample
      coats = Category.find_by(name: "Coats").items.sample
      accessories = Category.find_by(name: "Accessories").items.sample
      return [shoes, tshirt, shirt, pants, coats, accessories]
    else
      shoes = Category.find_by(name: "Shoes").items.sample
      tshirt = Category.find_by(name: "T-Shirts").items.sample
      shirt = Category.find_by(name: "Shirts").items.sample
      pants = Category.find_by(name: "Pants").items.sample
      coats = Category.find_by(name: "Coats").items.sample
      accessories = Category.find_by(name: "Accessories").items.sample
      return [shoes, tshirt, shirt, pants, coat, accessories]
    end
  end

end