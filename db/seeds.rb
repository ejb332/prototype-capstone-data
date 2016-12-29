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
end

12.times do
  item = Item.new(
    name: Faker::Commerce.product_name,
    user_id: rand(4)
  )
  item.save
end

12.times do
  destination = Destination.new(
    city: Faker::Address.city,
    state: Faker::Address.state,
    country: Faker::Address.country,
    date: Faker::Date.forward(60),
    weather_hi: "82F",
    weather_lo: "65F",
    map_url: "https://www.google.com/maps/place/Chicago,+IL/@41.8724544,-87.6657308,13z/data=!4m5!3m4!1s0x880e2c3cd0f4cbed:0xafe0a6ad09c0c000!8m2!3d41.8781136!4d-87.6297982",
    user_id: rand(4),
    zip: rand(00000..9999)
  )
  destination.save
end

12.times do
  destination_item = DestinationItem.new(
    destination_id: rand(12),
    item_id: rand(12)
  )
  destination_item.save
end

12.times do
  category = Category.new(
    name: Faker::Commerce.department
  )
  category.save
end

12.times do
  item_category = ItemCategory.new(
    item_id: rand(12),
    category_id: rand(12)
  )
  item_category.save
end

puts "Done!"