user = User.new(email: "user@user.com", password: 123456, name: "User da Silva")

100.times do
  kitchen = Kitchen.new(
    title: Faker::Company.name,
    city: Faker::Address.full_address,
    #after the presentation decide if we will have city, adress and zipcode separeted
    description: Faker::Lorem.sentence(word_count: 20),
    price_per_hour: Faker::Commerce.price,
    owner: user
    #if we add ratings
    #rating:  rand(0..5)
  )
  kitchen.save!
end

  # If we change our schema
  #address: "#{Faker::Address.street_address}, #{Faker::Address.city}, #{Faker::Address.zip_code("#####-###")}",

#     t.string "city"
#     t.text "description"
#     t.integer "price_per_hour"
#     t.bigint "user_id"
#     t.datetime "created_at", null: false
#     t.datetime "updated_at", null: false
#     t.string "title"
#     t.string "photo"
#     t.index ["user_id"], name: "index_kitchens_on_user_id"
