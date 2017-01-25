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
    if name.include? "skate shoes"
      return "/img/clothing_icons/Icon_Sneakers.svg"
    elsif name.include? "Pants"
      return "/img/clothing_icons/Icon_Slacks.svg"
    elsif name.include? "watch"
      return "/img/noise.gif"
    elsif name.include? "windbreaker"
      return "/img/clothing_icons/Icon_Light Jacket.svg"
    else
      return "/img/noise.gif"
    end
  end
end