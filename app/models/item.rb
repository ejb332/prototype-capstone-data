class Item < ApplicationRecord
  belongs_to :user
  has_many :item_categories
  has_many :categories, through: :item_categories
  has_many :destination_items
  has_many :destinations, through: :destination_items
end
