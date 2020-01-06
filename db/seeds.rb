Booking.destroy_all
Kitchen.destroy_all
User.destroy_all

photos_array = [
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013047/CookIt/urkq9hq710jxismflzgy.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013042/CookIt/ca0u1oelryimjgcinp8p.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013038/CookIt/d11qurhbabatjheb2fdm.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013033/CookIt/dxlhoe3jcngvsgyr6f80.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013029/CookIt/ytyyoryltb63rbiauhzt.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013022/CookIt/ohv4i8duwlxwzn0wee7f.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013016/CookIt/od5exgptf9xes45tu2ae.jpg",
  "https://res.cloudinary.com/mpc-cloud/image/upload/v1576013011/CookIt/uuuquvo62lv2x76b0aai.jpg"
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
    description: Faker::Lorem.sentence(word_count: 20),
    price_per_hour: Faker::Commerce.price,
    remote_photo_url: photos_array[i],
    owner: owner
    #if we add ratings
    #rating:  rand(0..5)
  )
end
