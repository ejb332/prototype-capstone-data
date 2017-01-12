class Destination < ApplicationRecord
  belongs_to :user
  has_many :destination_items
  has_many :items, through: :destination_items

end
