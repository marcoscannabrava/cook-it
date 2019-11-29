Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

photos_array = [
  "https://images.unsplash.com/photo-1473213110592-19430a217c0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1556912167-f556f1f39fdf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=760&q=80",
  "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1353&q=80",
  "https://images.unsplash.com/photo-1543503103-f94a0036ed9d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1541379119855-2078576bb41f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1571843439991-dd2b8e051966?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80",
  "https://images.unsplash.com/photo-1563238612-755d775174f4?ixlib=rb-1.2.1&auto=format&fit=crop&w=711&q=80",
  "https://images.unsplash.com/photo-1544457850-452ece471004?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=889&q=80"
]
title_array = [
  "Olympe",
  "Mr. Lam",
  "Satyricon",
  "Vegan Vegan",
  "Prana",
  "Deleite Pizza & Pasta",
  "Banana Jack",
  "Casarão 1903"
]

addresses_array = [
  "Custódio Serrão, 62",
  "Maria Angélica, 21",
  "Barão da Torre, 192",
  "Voluntários da Pátria, 402",
  "Lopes Quintas, 37",
  "Anita Garibaldi, 83",
  "Jangadeiros, 6",
  "Marquês de Olinda, 94"
]

# locations_array = [
#   [-22.960930, -43.206653],
#   [-22.962471, -43.207790],
#   [-22.982926, -43.201548],
#   [-22.954865, -43.195158],
#   [-22.962950, -43.218804],
#   [-22.967900, -43.189006],
#   [-22.985189, -43.196757],
#   [-22.943262, -43.185316],
# ]

owner = User.create!(email: "harry-hottie@gmail.com", password: "123456", name: "DaBoss")

8.times do |i|
  kitchen = Kitchen.create!(
    title: title_array[i],
    city: "Rio de Janeiro",
    address: addresses_array[i],
    neighbourhood: addresses_array[i].match(/\-.*,/),
    #after the presentation decide if we will have city, adress and zipcode separeted
    description: Faker::Lorem.sentence(word_count: 20),
    price_per_hour: Faker::Commerce.price,
    remote_photo_url: photos_array[i],
    owner: owner
    #if we add ratings
    #rating:  rand(0..5)
  )

  # kitchen.update!(
  #   latitude: locations_array[i][0],
  #   longitude: locations_array[i][1]
  # )
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
