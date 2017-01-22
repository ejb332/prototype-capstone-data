class User < ApplicationRecord
  has_secure_password
  has_many :items
  has_many :destinations

  validates :email, :uniqueness => true

  def select_wardrobe(input_temp, date_total)
    results = []
    date_total.times do
      if input_temp >= 75
        results << Category.find_by(name: "Sandals").items.sample
        results << Category.find_by(name: "T-Shirts").items.sample
        results << Category.find_by(name: "Shorts").items.sample
        results << Category.find_by(name: "Accessories").items.sample
      elsif input_temp < 75 && input_temp >= 55
        results << Category.find_by(name: "Shoes").items.sample
        results << Category.find_by(name: "T-Shirts").items.sample
        results << Category.find_by(name: "Pants").items.sample
        results << Category.find_by(name: "Coats").items.sample
        results << Category.find_by(name: "Accessories").items.sample
      elsif input_temp < 55 && input_temp >= 40
        results << Category.find_by(name: "Shoes").items.sample
        results << Category.find_by(name: "T-Shirts").items.sample
        results << Category.find_by(name: "Shirts").items.sample
        results << Category.find_by(name: "Pants").items.sample
        results << Category.find_by(name: "Coats").items.sample
        results << Category.find_by(name: "Accessories").items.sample
      else
        results << Category.find_by(name: "Shoes").items.sample
        results << Category.find_by(name: "T-Shirts").items.sample
        results << Category.find_by(name: "Shirts").items.sample
        results << Category.find_by(name: "Pants").items.sample
        results << Category.find_by(name: "Coats").items.sample
        results << Category.find_by(name: "Accessories").items.sample
      end
    end
    return results
  end
end