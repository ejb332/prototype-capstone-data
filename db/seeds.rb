items = {
  "Pants" => ["corduroys", "jeans", "khakis"],
  "Formal Pants" => ["tuxedo pants", "suit pants"],
  "Shorts" => ["bermuda shorts", "linen shorts"],
  "Shoes" => ["gym shoes", "high tops", "winter boots", "skate shoes"],
  "Formal Shoes" => ["loafers", "brogues", "oxfords"],
  "Sandals" => ["flip-flops"],
  "T-Shirts" => ["solid colored t-shirt", "patterned t-shirt", "white t-shirt"],
  "Shirts" => ["button-down", "flannel", "waffle shirt"],
  "Formal Shirts" => ["french-cuff button-down"],
  "Coats" => ["parka", "windbreaker", "felt"],
  "Formal Coats" => ["Peacoat"],
  "Raingear" => ["rain boots", "umbrella", "rain coat"],
  "Dresses" => ["sun dress", "winter dress"],
  "Formal Dresses" => ["gown"],
  "Accessories" => ["watch", "earrings", "necklace"],
  "Formal Accessories" => ["fancy watch"]
}
colors = [
  "White",
  "Yellow",
  "Red",
  "Gray",
  "Olive",
  "Purple",
  "Maroon",
  "Teal",
  "Green",
  "Blue",
  "Navy",
  "Black"
]

items.each do |category_name, item_names|
  Category.create(name: category_name)
end

names = ["test1", "test2", "test3", "Eric"]
names.each do |name|
  user = User.new(
    name: name,
    email: "#{name}@gmail.com",
    password: "password",
    mobile_number: Faker::PhoneNumber.cell_phone,
    admin: true
  )
  user.save
  items.each do |category_name, item_names|
    category = Category.find_by(name: category_name)
    (rand(4) + 1).times do
      name = "#{colors.sample} #{item_names.sample}"
      item = Item.create(user_id: user.id, name: name)
      ItemCategory.create(item_id: item.id, category_id: category.id)
    end
  end
end


# 120.times do
#   item = Item.new(
#     name: Faker::Commerce.product_name,
#     user_id: rand(4)
#   )
#   item.save
# end

# 12.times do
#   destination = Destination.new(
#     city: Faker::Address.city,
#     state: Faker::Address.state,
#     country: Faker::Address.country,
#     date: Faker::Date.forward(60),
#     weather_hi: "82F",
#     weather_lo: "65F",
#     map_url: "https://www.google.com/maps/place/Chicago,+IL/@41.8724544,-87.6657308,13z/data=!4m5!3m4!1s0x880e2c3cd0f4cbed:0xafe0a6ad09c0c000!8m2!3d41.8781136!4d-87.6297982",
#     user_id: rand(4),
#     zip: rand(00000..9999)
#   )
#   destination.save
# end

# 12.times do
#   destination_item = DestinationItem.new(
#     destination_id: rand(12),
#     item_id: rand(12)
#   )
#   destination_item.save
# end

# 12.times do
#   category = Category.new(
#     name: Faker::Commerce.department
#   )
#   category.save
# end

# 30.times do
#   item_category = ItemCategory.new(
#     item_id: rand(14...100),
#     category_id: rand(14)
#   )
#   item_category.save
# end

puts "Done!"