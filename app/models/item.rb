class Item < ApplicationRecord
  belongs_to :user
  has_many :item_categories
  has_many :categories, through: :item_categories
  has_many :destination_items
  has_many :destinations, through: :destination_items

  def tag_array
    tags[1..-2].gsub("\"", "").split(", ")
  end

  def img_decide
    if !img_url
      return self.images
    else
      return self.img_url
    end
  end

  def images
    if name.include? "skate shoes" || "high tops"
      return "/img/clothing_icons/Icon__Sneakers.svg"
    elsif name.include? "pants" || "khakis"
      return "/img/clothing_icons/Icon_Slacks.svg"
    elsif name.include? "windbreaker"
      return "/img/clothing_icons/Icon__Light Jacket.svg"
    elsif name.include? "parka" || "felt"
      return "/img/clothing_icons/Icon__Heavy Jacket.svg"
    elsif name.include? "boots"
      return "/img/clothing_icons/Icon__Winter Boots.svg"
    elsif name.include? "shorts"
      return "/img/clothing_icons/Icon__Shorts.svg"
    elsif name.include? "flip-flops"
      return "/img/clothing_icons/Icon__Flip Flops.svg"
    elsif name.include? "jeans"
      return "img/clothing_icons/Icon__Jeans.svg"
    elsif name.include? "t-shirt"
      return "/img/clothing_icons/Icon__Short Sleeve.svg"
    elsif name.include? "loafers"
      return "img/clothing_icons/Icon__Athletic Sneakers.svg"
    elsif name.include? "button-down"
      return "/img/clothing_icons/Icon__Dress Shirt.svg"
    elsif name.include? "waffle"
      return "/img/clothing_icons/Icon__Long Sleeve.svg"
    elsif name.include? "earrings" || "necklace"
      return "/img/clothing_icons/Icon__Jewelry.svg"
    else
      return "/img/noise.gif"
    end
  end
end